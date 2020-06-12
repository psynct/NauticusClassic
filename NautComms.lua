
-- declare colour codes for console messages
local RED     = "|cffff0000"
local GREEN   = "|cff00ff00"
local YELLOW  = "|cffffff00"
local WHITE   = "|cffffffff"
local GREY    = "|cffbababa"

local DATA_VERSION = 4 -- route calibration versioning
local CMD_VERSION = "VER"
local CMD_KNOWN = "KWN4"

local NauticusClassic = NauticusClassic
local L = LibStub("AceLocale-3.0"):GetLocale("NauticusClassic")

local requests = {
	["ALL"] = nil,
	["RAID"] = nil,
	["GUILD"] = nil,
	["YELL"] = nil
}
local requestLists = {
	["ALL"] = {},
	["RAID"] = {},
	["GUILD"] = {},
	["YELL"] = {}
}
local requestVersions = {
	["ALL"] = false,
	["RAID"] = false,
	["GUILD"] = false,
	["YELL"] = false
}

function NauticusClassic:CancelRequest(distribution)
	if requests[distribution] then
		self:CancelTimer(requests[distribution], true)
		requests[distribution] = nil
	end
end

function NauticusClassic:DoRequest(wait, distribution)
	self:CancelRequest(distribution)

	if wait and wait > 0 then
		requests[distribution] = self:ScheduleTimer("DoRequest", wait, 0, distribution)
		return
	end

	if next(requestLists[distribution]) then
		self:BroadcastTransportData(distribution)

		if requestVersions[distribution] or next(requestLists[distribution]) then
			self:DoRequest(2.5, distribution)
			return
		end
	end

	if requestVersions[distribution] then
		requestVersions[distribution] = false
		local version = self.versionNum
		if self.version then version = version.." "..self.version; end
		self:SendMessage(CMD_VERSION.." "..version, distribution)
	end
end

local function GetLag()
	local _,_,lag = GetNetStats()
	return lag / 1000.0
end

local crunch, uncrunch

do
	local map = -- excludes: space, comma, colon, s, S, %, tab (\009) ; invalid: nul (\000), line feed (\010), bar (\124), >\127
		"0123456789ABCDEFGHIJKLMNOPQRTUVWXYZabcdefghijklmnopqrtuvwxyz!\"#$&'()*+-./;<=>?@[\\]^_`{}~"..
		"\001\002\003\004\005\006\007\008\011\012"..
		"\014\015\016\017\018\019\020\021\022\023\024\025\026\027\028\029\030\031\127"

	local _base = strlen(map)
	local digits = {}

	function crunch(num)
		--if true then return num; end
		if 0 > num then error("negative number"); end -- shouldn't happen, but just in case
		local s = ""
		local remain
		repeat
			remain = num % _base -- faster than fmod
			s = s..digits[remain]
			num = (num-remain) / _base -- faster than floor
		until 0 == num
		return s
	end

	local chrmap = {}

	function uncrunch(s)
		--if true then return tonumber(s); end
		local num = 0
		local base = 1
		local c
		for i = 1, strlen(s) do
			c = chrmap[strbyte(s, i)]
			if not c then
				NauticusClassic:DebugMessage("FECK: "..s.." ; i: "..i.." ; strbyte: "..strbyte(s, i))
				return
			end
			num = num + c * base
			base = base * _base -- faster than power (^)
		end
		return num
	end

	local c

	for i = 1, _base do
	   c = strbyte(map, i)
	   chrmap[c] = i-1
	   digits[i-1] = strchar(c)
	end
end

-- by Mikk; from http://www.wowwiki.com/StringHash
local function StringHash(text)
	local counter = 1
	local len = strlen(text)
	for i = 1, len, 3 do
		counter = (counter * 8161) % 4294967279 +
		 (strbyte(text, i) * 16776193) +
		((strbyte(text, i+1) or (len-i+256)) * 8372226) +
		((strbyte(text, i+2) or (len-i+256)) * 3932164)
	end
	return counter % 4294967291
end

function NauticusClassic:BroadcastTransportData(distribution)
	local since, boots, swaps
	local lag = GetLag()
	local trans_str = ""

	for transit in pairs(requestLists[distribution]) do
		since, boots, swaps = self:GetKnownCycle(transit)
		trans_str = trans_str..crunch(transit)

		if since ~= nil then
			trans_str = trans_str..":"..crunch(math.floor((since+lag)*1000.0+.5))

			if swaps ~= 1 then
				trans_str = trans_str..":"..crunch(swaps)
			end

			if boots ~= 0 then
				if swaps == 1 then
					trans_str = trans_str..":"
				end

				trans_str = trans_str..":"..crunch(boots)
			end
		end

		trans_str = trans_str..","
		requestLists[distribution][transit] = nil
		if 229 < strlen(trans_str) then break; end
	end

	if trans_str ~= "" then
		trans_str = strsub(trans_str, 1, -2) -- remove the last comma
		self:SendMessage(CMD_KNOWN.." "..DATA_VERSION.." "..trans_str.." "..crunch(StringHash(trans_str)), distribution)
		self:DebugMessage("tell our transports ; length: "..strlen(trans_str))
	else
		self:DebugMessage("nothing to tell")
	end
end

--[===[@debug@
function NauticusClassic:RequestAllTransports()
	local trans_str = ""
	for transit in ipairs(self.transports) do
		trans_str = trans_str..crunch(transit)..","
		requestList[transit] = nil
	end
	trans_str = strsub(trans_str, 1, -2) -- remove the last comma
	self:SendMessage(CMD_KNOWN.." "..crunch(DATA_VERSION).." "..trans_str.." "..crunch(StringHash(trans_str)))
end
--@end-debug@]===]

function NauticusClassic:RequestTransport(t, distribution)
	requestLists[distribution][t] = true
end

function NauticusClassic:SendMessage(msg, distribution)
	if not self.comm_disable then
		self:DebugMessage("sending msg dist: "..distribution.." ; length: "..strlen(msg))
		if distribution == "ALL" then
			if IsInGroup() then
				self:SendCommMessage(self.DEFAULT_PREFIX, msg, "RAID")
			end
			if IsInGuild() then
				self:SendCommMessage(self.DEFAULT_PREFIX, msg, "GUILD")
			end
			self:SendCommMessage(self.DEFAULT_PREFIX, msg, "YELL")
		else
			self:SendCommMessage(self.DEFAULT_PREFIX, msg, distribution)
		end
	end
end

-- extract key/value from message
local function GetArgs(message, separator)
	local args = { strsplit(separator, message) }
	for t = 1, #(args), 1 do
		if args[t] == "" then
			args[t] = nil
		end
	end
	return args
end

function NauticusClassic:OnCommReceived(prefix, msg, distribution, sender)
	if sender ~= UnitName("player") and strlower(prefix) == strlower(self.DEFAULT_PREFIX) and
		(distribution == "PARTY" or distribution == "RAID" or distribution == "GUILD" or distribution == "YELL") then
		if distribution == "PARTY" then
			distribution = "RAID"
		end
		self:DebugMessage("received sender: "..sender.." ; dist: "..distribution.." ; length: "..strlen(msg))
		if 254 <= strlen(msg) then return; end -- message too big, probably corrupted

		local args = GetArgs(msg, " ")

		if args[1] == CMD_VERSION then -- version, num
			self:ReceiveMessage_version(tonumber(args[2]), distribution, sender)
		elseif args[1] == CMD_KNOWN then -- known, { transports }
			self:ReceiveMessage_known(tonumber(args[2]), args[3], args[4], distribution, sender)
		end
	end
end

function NauticusClassic:ReceiveMessage_version(clientversion, distribution, sender)
	self:DebugMessage(sender.." says: version "..clientversion)

	if clientversion > self.versionNum then
		if not self.db.global.newerVersion then
			self.db.global.newerVersion = clientversion
			self.db.global.newerVerAge = time()
		elseif clientversion > self.db.global.newerVersion then
			self.db.global.newerVersion = clientversion
		end
	elseif clientversion < self.versionNum then
		requestVersions[distribution] = true
		self:DoRequest(5 + math.random() * 15, distribution)
		return
	end

	requestVersions[distribution] = false

	-- if we don't need to send back any data, cancel our scheduler immediately
	if not next(requestLists[distribution]) then
		self:DebugMessage("received: version; no more to send")
		self:CancelRequest(distribution)
	end
end

function NauticusClassic:ReceiveMessage_known(version, transports, hash, distribution, sender)
	if version ~= DATA_VERSION then return; end

	local lag = GetLag()
	local set, respond, since, boots, swaps

	--[===[@debug@
	if hash and self.debug then
		local rehash = StringHash(transports)
		hash = uncrunch(hash)
		if hash ~= rehash then
			self:DebugMessage("wrong hash: "..hash.." (supplied) vs "..rehash.." (computed)")
		end
	end
	--@end-debug@]===]

	for transit, values in pairs(self:StringToKnown(transports)) do
		since, boots, swaps = values.since, values.boots, values.swaps

		if since ~= nil then
			since = since/1000.0 + lag
			boots = tonumber(boots)
			swaps = swaps + 1 --imagine data is being transmitted (+1)
		end

		set, respond = self:IsBetter(transit, since, boots, swaps)

		--[===[@debug@
		if self.debug then
			local ourSince, ourBoots, ourSwaps = self:GetKnownCycle(transit)
			local debugColour
			if set == nil then
				debugColour = RED
			elseif set then
				debugColour = GREEN
			elseif respond then
				debugColour = YELLOW
			else
				debugColour = GREY
			end
			local output = sender.." knows "..transit.." "..debugColour..
				(since and since.."|r (b:"..boots..",s:"..swaps..")" or "nil|r").." vs our "..
				(ourSince and format("%0.3f", ourSince).." (b:"..ourBoots..",s:"..ourSwaps..")" or "nil")
			if ourSince and since then
				output = output.." ; diff: "..format("%0.3f", ourSince-since)..
					" ; cycles: "..format("%0.6f", (ourSince-since) / self.rtts[transit])
			end
			self:DebugMessage(output)
		end
		--@end-debug@]===]

		if set ~= nil then -- true or false...
			if set then
				self:SetKnownCycle(transit, since, boots, swaps)
			end
			requestLists[distribution][transit] = respond
		end
	end

	-- if we don't need to send back any data, cancel our scheduler immediately
	if next(requestLists[distribution]) then
		self:DoRequest(5 + math.random() * 15, distribution)
	elseif not requestVersions[distribution] then
		self:DebugMessage("received: known; no more to send")
		self:CancelRequest(distribution)
	end
end

-- returns a, b
-- where a is if we should set our data to theirs (true or false) and b is how we should respond with ours (true or nil)
function NauticusClassic:IsBetter(transit, since, boots, swaps)
	local ourSince, ourBoots, ourSwaps = self:GetKnownCycle(transit)

	if since == nil then
		if ourSince == nil then
			return false -- no set, no response
		else
			return false, true -- no set, respond
		end
	else
		if ourSince == nil then
			return true -- set, no response
		elseif 0 <= since then
			if boots < ourBoots then
				return true -- set, no response
			elseif boots > ourBoots then
				return false, true -- no set, respond
			else
				-- swap difference; positive = better, less than -2 = worse, 0, -1, -2 = depends!
				local swapDiff = ourSwaps - swaps

				if 0 < swapDiff then -- (swaps < ourSwaps)
					return true -- set, no response
				elseif -2 > swapDiff then -- (swaps > ourSwaps+2); imagine data is being transmitted
					return false, true -- no set, respond
				else
					-- age difference; positive = better, negative = worse
					local ageDiff = math.floor((ourSince - since) / self.rtts[transit] + .5)
					local SET, RESPOND = true, true

					--  0 = maybe better for us but response pointless
					-- -1 = ignore/pointless
					-- -2 = worse for us but respond if better time
					if  0 ~= swapDiff then SET = false; end
					if -2 ~= swapDiff then RESPOND = nil; end

					if 0 < ageDiff then -- (age < ourAge)
						return SET -- set, no response
					elseif 0 > ageDiff then -- (age > ourAge)
						return false, RESPOND -- no set, respond
					else
						return false -- no set, no response
					end
				end
			end
		end
	end
end

function NauticusClassic:StringToKnown(transports)
	local args_tmp, transit, since, swaps, boots
	local args = GetArgs(transports, ",")
	local trans_tab = {}

	for t = 1, #(args), 1 do
		args_tmp = GetArgs(args[t], ":")
		transit = uncrunch(args_tmp[1])

		if transit and self.transports[transit] then
			since = args_tmp[2]
			if since then
				since, swaps, boots = uncrunch(since), args_tmp[3], args_tmp[4]
				if since then
					trans_tab[transit] = {
						['since'] = since,
						['boots'] = boots and uncrunch(boots) or 0,
						['swaps'] = swaps and uncrunch(swaps) or 1,
					}
				end
			else
				trans_tab[transit] = {}
			end
		elseif transit then
			self:DebugMessage("unknown transit: "..transit)
		end
	end

	return trans_tab
end

local updateChannel

function NauticusClassic:UpdateChannel(wait)
	if updateChannel then self:CancelTimer(updateChannel, true); updateChannel = nil; end

	if wait then
		updateChannel = self:ScheduleTimer("UpdateChannel", wait)
		return
	end

	--[===[@debug@
	if self.debug then
		self:ScheduleTimer("RequestAllTransports", 5)
		return
	end
	--@end-debug@]===]

	for id in pairs(self.transports) do
		requestLists["ALL"][id] = true
	end

	requestVersions["ALL"] = true
	self:DoRequest(5 + math.random() * 15, "ALL")
end
