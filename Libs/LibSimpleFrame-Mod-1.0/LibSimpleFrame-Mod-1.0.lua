--[[
Name: LibSimpleFrame-1.0
Revision: $Revision: 153 $
Author(s): David Lynch (kemayo@gmail.com)
Website: http://www.wowace.com/wiki/LibSimpleFrame-1.0
Documentation: http://www.wowace.com/wiki/LibSimpleFrame-1.0
SVN: http://svn.wowace.com/wowace/trunk/LibSimpleFrame-1.0/
Description: Lightweight line-based info-display frame
License: LGPL v2.1
]]

local MAJOR_VERSION = "LibSimpleFrame-Mod-1.0"
local MINOR_VERSION = 90000 + tonumber(("$Revision: 153 $"):match("%d+")) or 0

-- #AUTODOC_NAMESPACE lib

local lib, oldMinor = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

local wipe = wipe
local debugf = tekDebug and tekDebug:GetFrame("LibSimpleFrame-1.0")
local function Debug(...) if debugf then debugf:AddMessage(string.join(", ", tostringall(...))) end end

lib.registry = lib.registry or {}

local backdrop = {
	bgFile = [[Interface\Tooltips\UI-Tooltip-Background]],
	edgeFile = [[Interface\Tooltips\UI-Tooltip-Border]],
	tile = true, edgeSize = 16, tileSize = 16,
	insets = {left = 5, right = 5, top = 5, bottom = 5},
}

local function call_handler(this, h)
	if this.handlers[h] == false then return end -- allows override of a root handler
	local handler, value = (this.handlers[h] or this.core.handlers[h]), (this.handlerValues[h] or this.core.handlerValues[h])
	if handler then return handler(this.core.id, value) end
end
local function fade(frame, t, start, stop)
	local func = (start > stop) and UIFrameFadeOut or UIFrameFadeIn
	return func(frame, t, start, stop)
end
local function dragstart(this)
	this.core:StartMoving()
	for f in pairs(this.core.associates) do
		if f:IsMovable() then
			f:StartMoving()
		end
	end
end
local function dragstop(this)
	this.core:StopMovingOrSizing()
	this.core:SavePosition()
	this.core:SetPosition()
	for f in pairs(this.core.associates) do
		f:StopMovingOrSizing()
	end
end
local function button_enter(this)
	if this:IsVisible() then
		fade(this.core, this.core.db.fadeTime or 0.1, this.core:GetAlpha(), this.core.db.opacity)
	end
	call_handler(this, "OnEnter")
end
local function button_leave(this)
	if this:IsVisible() then
		fade(this.core, this.core.db.fadeTime or 0.1, this.core:GetAlpha(), this.core.db.fade)
	end
	call_handler(this, "OnLeave")
end
local function button_mouseup(this, button)
	if this.handlers.OnClick then
		call_handler(this, "OnClick")
	elseif button == "LeftButton" and this.handlers.OnLeftClick then
		call_handler(this, "OnLeftClick")
	elseif button == "RightButton" and this.handlers.OnRightClick then
		call_handler(this,"OnRightClick")
	end
end
local getcpos, getscrw, getscrh = _G.GetCursorPosition, _G.GetScreenWidth, _G.GetScreenHeight
local function onupdate(this)
	local x, y = getcpos()
	local cx, cy = getscrw() / 2, getscrh() / 2
	local point
	if x > cx then
		if y < cy then point, x, y = "BOTTOMRIGHT", x-2, y+2
		else point, x, y = "TOPRIGHT", x-2, y+2; end
	else
		if y < cy then point, x, y = "BOTTOMLEFT", x-2, y+2
		else point, x, y = "TOPLEFT", x+18, y-18; end
	end
	local frame = this.core
	local parent = frame:GetParent()
	local scale = parent:GetScale() * frame:GetScale()
	frame:ClearAllPoints()
	frame:SetPoint(point, parent, "BOTTOMLEFT", x / scale, y / scale)
end

local function Reset(self)
	wipe(self.handlers)
	wipe(self.handlerValues)
	self:Font()
	--self.left:SetFontObject(GameFontNormal)
	self.left:SetWidth(0)
	self.left:SetHeight(0)
	self.left:SetText('')
	self.left:SetJustifyH('LEFT')
	self.left:SetTextColor(GameFontNormal:GetTextColor())
	--self.right:SetFontObject(GameFontNormal)
	self.right:SetWidth(0)
	self.right:SetHeight(0)
	self.right:SetText('')
	self.right:SetJustifyH('RIGHT')
	self.right:SetTextColor(GameFontNormal:GetTextColor())
	--self:SetWidth(self.core:GetWidth()-10)
	self:SetHeight(self.core.db.line_height or 12)
	self:Hide()
	return self
end

local function Color(self, lr, lg, lb, la, rr, rg, rb, ra)
	self.left:SetTextColor(lr or 1, lg or 1, lb or 1, la or 1)
	self.right:SetTextColor(rr or 1, rg or 1, rb or 1, ra or 1)
	return self
end

local function Font(self, left_font, left_size, left_flags, right_font, right_size, right_flags)
	local default_font, default_size, default_flags = GameFontNormal:GetFont()
	self.left:SetFont(left_font or default_font, left_size or default_size, left_flags or default_flags)
	self.right:SetFont(right_font or default_font, right_size or default_size, right_flags or default_flags)
	return self
end

local events = {OnEnter = true, OnLeave = true, OnClick = true, OnLeftClick = true, OnRightClick = true,}
local function Handler(self, event, handler, value)
	if events[event] then
		self.handlers[event] = handler
		self.handlerValues[event] = value
	end
	return self
end

local function create_line(parent, i)
	local b = CreateFrame('Button', parent:GetName()..'_Line'..i, parent)
	b.core = parent
	b.handlers = {}
	b.handlerValues = {}

	if parent.db.lock then
		b:RegisterForDrag(nil)
		b:EnableMouse(false)
	else
		b:RegisterForDrag("LeftButton")
		b:EnableMouse(true)
	end
	b:SetScript("OnEnter", button_enter)
	b:SetScript("OnLeave", button_leave)
	b:SetScript("OnMouseUp", button_mouseup)
	b:SetScript("OnDragStart", dragstart)
	b:SetScript("OnDragStop", dragstop)
	
	local left = b:CreateFontString(b:GetName().."_Left", "OVERLAY")
	local right = b:CreateFontString(b:GetName().."_Right", "OVERLAY")
	--local texture = b:CreateTexture(b:GetName().."_Texture", "ARTWORK")
	
	left:SetPoint("TOPLEFT", b)
	right:SetPoint("TOPRIGHT", b)
	--texture:SetPoint("TOPRIGHT", b, "TOPLEFT")
	
	b.left = left
	b.right = right
	--b.texture = texture
	
	if i == 1 then
		b:SetPoint("TOPLEFT", parent, 10, -10)
	else
		b:SetPoint("TOPLEFT", parent.lines[i-1], "BOTTOMLEFT", 0, -2)
	end
	
	b.Reset = Reset
	b.Color = Color
	b.Font = Font
	b.Handler = Handler

	return b:Reset()
end

local function AddLine(self, left, right, wrap, indent)
	indent = indent or 0
	self.current_line = self.current_line + 1
	if not self.lines[self.current_line] then self.lines[self.current_line] = create_line(self, self.current_line) end
	local l = self.lines[self.current_line]
	l.left:SetPoint("TOPLEFT", l, "TOPLEFT", indent, 0)
	l.left:SetText(left)
	l.right:SetText(right)
	l.indent = indent
	l.wrap = wrap
	l:Show()
	return l
end

local function Clear(self)
	for i,l in ipairs(self.lines) do
		l:Reset()
	end
	self.current_line = 0
	return self
end

local function Size(self)
	local height = 20 -- top+bottom borders
	local width = self.db.width
	for i, line in ipairs(self.lines) do
		if not line.wrap then
			width = max(width, line.left:GetStringWidth() + line.right:GetStringWidth() + line.indent)
		end
	end
	for i, line in ipairs(self.lines) do
		line:SetWidth(width)
		line.left:SetWidth(line:GetWidth() - line.right:GetStringWidth() - line.indent)

		if line.wrap then
			line:SetHeight(max(line.left:GetHeight(), line.right:GetHeight()))
		else
			local _, left_size = line.left:GetFont()
			local _, right_size = line.right:GetFont()
			local biggest_size = max(left_size, right_size)
			if biggest_size > line:GetHeight() then
				line:SetHeight(biggest_size)
			end

			line.left:SetHeight(line:GetHeight())
			line.right:SetHeight(line:GetHeight())
		end
		if line:IsShown() then
			height = height + line:GetHeight() + 2
		end
	end
	self:SetWidth(width + 23)
	if self.db.min_height and height < self.db.min_height then height = self.db.min_height end
	self:SetHeight(height)
	return self
end

local function SavePosition(self)
	--local point, _, relpoint, x, y = self:GetPoint()
	local pos = self.db.position
	local grow_up = self.db.grow_up
	local scale = self:GetEffectiveScale()
	pos.point = grow_up and "BOTTOMLEFT" or "TOPLEFT"
	pos.relpoint = "BOTTOMLEFT"
	pos.x = self:GetLeft() * scale
	pos.y = (grow_up and self:GetBottom() or self:GetTop()) * scale
	return self
end

local function SetPosition(self)
	self:SetBackdropBorderColor(unpack(self.db.border))
	self:SetBackdropColor(unpack(self.db.background))
	self:SetScale(self.db.scale)
	self:SetFrameStrata(self.db.strata)
	self:SetAlpha(self.db.fade)
	--self:SetWidth(self.db.width)
	self:StopMovingOrSizing()
	if not self.at_cursor then
		self:ClearAllPoints()
		if self.attached then
			self:SetPoint(unpack(self.attached))
		else
			local pos = self.db.position
			local scale = self:GetEffectiveScale()
			self:SetPoint(pos.point, UIParent, pos.relpoint, pos.x / scale, pos.y / scale)
		end
	end
	for f in pairs(self.associates) do
		f:SetScale(self.db.scale)
		f:StopMovingOrSizing()
	end
	return self
end

--[[
local function modifier_watcher(this, since_last)
	this.modifier_timer = this.modifier_timer + since_last
	if this.modifier_timer > 0.3 then
		this.modifier_timer = 0
		if IsAltKeyDown() then
			this.core:Unlock(true)
		else
			this.core:Lock()
		end
	end
end
local lock_modifiers = {LALT = true, RALT = true,}
local function modifier_event(this, event, modifier, pressed)
	if lock_modifiers[modifier] then
		if pressed == 1 then
			this.core:Unlock(true)
		else
			this.core:Lock()
		end
	end
end]]
local function Lock(self, toggle)
	if toggle == false then return self:Unlock() end
	self.db.lock = true
	--self:RegisterEvent("MODIFIER_STATE_CHANGED")
	--self:SetScript("OnEvent", modifier_event)
	--self:SetScript("OnUpdate", nil)

	self:RegisterForDrag(nil)
	self:EnableMouse(false)
	self:StopMovingOrSizing()
	
	for i,l in pairs(self.lines) do
		l:RegisterForDrag(nil)
		l:EnableMouse(false)
	end
	for f in pairs(self.associates) do
		f:RegisterForDrag(nil)
		f:EnableMouse(false)
		if f.OnLock then f:OnLock() end
	end
	return self
end
local function Unlock(self, temp)
	if temp then
		-- alt was pressed; this might be because of alt-tab, which screws up events, so check further:
		--self.modifier_timer = 0
		--self:SetScript("OnUpdate", modifier_watcher)
	else
		self.db.lock = false
		--self:UnregisterEvent("MODIFIER_STATE_CHANGED")
		--self:SetScript("OnUpdate", nil)
	end
	self:RegisterForDrag("LeftButton")
	self:EnableMouse(true)
	for i,l in pairs(self.lines) do
		l:RegisterForDrag("LeftButton")
		l:EnableMouse(true)
	end
	for f in pairs(self.associates) do
		f:RegisterForDrag("LeftButton")
		f:EnableMouse(true)
		if f.OnUnlock then f:OnUnlock() end
	end
	return self
end

local function Attach(self, point, frame, relpoint, x, y)
	local parent = UIParent
	if not parent:IsShown() then
		local f = GetUIPanel("fullscreen")
		if f and f:IsShown() then
			parent = f
		end
	end
	self:SetParent(parent)
	if point then
		self.attached = {point, frame, relpoint, x, y}
	else
		self:SetScript("OnUpdate", onupdate)
		self.at_cursor = true
		self:SetScript("OnHide", function()
			self:SetScript("OnUpdate", nil)
			self.at_cursor = nil
		end)
	end
	return self
end

local function Associate(self, frame)
	-- Associates another frame with this SimpleFrame.  SimpleFrame will now handle dragging, scaling, and locking.
	-- This won't reparent frame, nor will it explicitly change the positioning of frame.
	self.associates[frame] = true
	frame.core = self
	frame:SetScript("OnDragStart", dragstart)
	frame:SetScript("OnDragStop", dragstop)
	
	self:SetPosition()
	return self.db.lock and self:Lock() or self:Unlock()
end
local function Forget(self, frame)
	frame.associates[frame] = nil
	frame.core = nil
	frame:SetScript("OnDragStart", nil)
	frame:SetScript("OnDragStop", nil)
	return self
end

function lib:New(name, options, id, parent)
	--id will be passed to all handler functions if provided
	--parent will default to UIParent
	local frame
	if lib.registry[name] then
		frame = self.registry[name]
	else
		frame = CreateFrame("Frame", name, parent or UIParent)
		frame.lines = {}
		self.registry[name] = frame
	end
	frame.id = id
	frame.core = frame
	frame.handlers = {}
	frame.handlerValues = {}
	frame.associates = {}

	frame:SetBackdrop(backdrop)
	frame:SetMovable(true)
	frame:SetClampedToScreen(true)

	frame:SetScript("OnEnter", button_enter)
	frame:SetScript("OnLeave", button_leave)
	frame:SetScript("OnDragStart", dragstart)
	frame:SetScript("OnDragStop", dragstop)

	frame.AddLine = AddLine
	frame.Size = Size
	frame.Clear = Clear
	frame.SavePosition = SavePosition
	frame.SetPosition = SetPosition
	frame.Lock = Lock
	frame.Unlock = Unlock
	frame.Handler = Handler
	frame.Attach = Attach
	frame.Associate = Associate
	frame.Forget = Forget

	frame.db = options
	frame:SetPosition()

	return options.lock and frame:Lock() or frame:Unlock()
end

function lib:Get(name)
	return self.lib.registry[name]
end
