
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "koKR")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = true

-- slash commands (no spaces!)
L["icons"] = true
L["minishow"] = true
L["worldshow"] = true
L["minisize"] = true
L["worldsize"] = true
L["framerate"] = true
L["faction"] = true
L["minibutton"] = true
L["autoselect"] = true
L["alarm"] = true
L["channel"] = true

-- options
L["Options"] = true
L["General Settings"] = true
L["Map Icons"] = true
L["Options for displaying transports as icons on the Mini-Map and World Map."] = true
L["Show on Mini-Map"] = true
L["Toggle display of icons on the Mini-Map."] = true
L["Show on World Map"] = true
L["Toggle display of icons on the World Map."] = true
L["Mini-Map icon size"] = true
L["Change the size of the Mini-Map icons."] = true
L["World Map icon size"] = true
L["Change the size of the World Map icons."] = true
L["Icon framerate"] = true
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = true
L["Faction only"] = true
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = true
L["Auto select transport"] = true
L["Automatically select nearest transport when standing at platform."] = true
L["Alarm delay"] = true
L["Change the alarm delay (in seconds)."] = true
L["Mini-Map button"] = true -- to do
L["Toggle the Mini-Map button."] = true -- to do
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = "도착"
L["Departure"] = "출발"
L["Select Transport"] = "이동수단을 선택하세요"
L["Select None"] = true
L["No Transport Selected"] = true
L["Not Available"] = true
L["N/A"] = true -- abbreviation for Not Available
L["NauticusClassic Options"] = true
L["Alarm is now: "] = true
L["ON"] = true
L["OFF"] = true

L["List friendly faction only"] =
	"해당 진영의 이동수단만 표시" -- re do?
L["Shows only neutral transports and those of your faction."] =
	true -- to do
L["List relevant to current zone only"] =
	"현재 지역의 이동수단만 표시" -- re do?
L["Shows only transports relevant to your current zone."] =
	true -- to do
L["Hint: Click to cycle transport."] = "힌트: Click to cycle transport." -- re do
L["Alt-Click to set up alarm."] = true
L["Ctrl-Click to broadcast in %s."] = true
L["New version available! Visit github.com/psynct/NauticusClassic"] =
	true -- to do

-- ship names
L["The Thundercaller"] = true
L["The Iron Eagle"] = true
L["The Purple Princess"] = true
L["The Maiden's Fancy"] = true
L["The Bravery"] = true
L["The Lady Mehley"] = true
L["The Moonspray"] = true
L["Feathermoon Ferry"] = true
L["Deeprun Tram North"] = true
L["Deeprun Tram South"] = true

-- zones
L["Orgrimmar"] = "오그리마"
L["Undercity"] = "언더시티"
L["Durotar"] = "듀로타"
L["Tirisfal Glades"] = "티리스팔 숲"
L["Stranglethorn Vale"] = "가시덤불 골짜기"
L["The Barrens"] = "불모의 땅"
L["Wetlands"] = "저습지"
L["Darkshore"] = "어둠의 해안"
L["Dustwallow Marsh"] = "먼지진흙 습지대"
L["Teldrassil"] = "텔드랏실"
L["Feralas"] = "페랄라스"
L["Stormwind City"] = true
L["Ironforge"] = true
L["Deeprun Tram"] = true

-- subzones
L["Grom'gol"] = "그롬골 주둔지"
L["Booty Bay"] = "무법항"
L["Ratchet"] = "톱니항"
L["Menethil Harbor"] = "메네실 항구"
L["Auberdine"] = "아우버다인"
L["Theramore"] = "테라모어 섬"
L["Rut'Theran Village"] = "루테란 마을"
L["Sardor Isle"] = "Sardor Isle"
L["Feathermoon"] = "Feathermoon"
L["Forgotten Coast"] = "Forgotten Coast"

-- abbreviations
L["Org"] = "오그" -- Orgrimmar
L["UC"]  = "언더" -- Undercity
L["GG"]  = "가덤" -- Grom'gol
L["BB"]  = "무법" -- Booty Bay
L["Rat"] = "톱니" -- Ratchet
L["MH"]  = "메네실" -- Menethil Harbor
L["Aub"] = "아우버" -- Auberdine
L["Th"]  = "테라" -- Theramore
L["RTV"] = "루테란" -- Rut'Theran Village
L["FMS"] = true -- Feathermoon
L["Fer"] = true -- Feralas
L["SW"] = true -- Stormwind City
L["IF"] = true -- Ironforge

-- channels
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Raid"] = true
L["Guild"] = true
