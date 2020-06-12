
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "enUS", true)
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
L["Mini-Map button"] = true
L["Toggle the Mini-Map button."] = true
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = true
L["Departure"] = true
L["Select Transport"] = true
L["Select None"] = true
L["No Transport Selected"] = true
L["Not Available"] = true
L["N/A"] = true -- abbreviation for Not Available
L["NauticusClassic Options"] = true
L["Alarm is now: "] = true
L["ON"] = true
L["OFF"] = true

L["List friendly faction only"] = true
L["Shows only neutral transports and those of your faction."] = true
L["List relevant to current zone only"] = true
L["Shows only transports relevant to your current zone."] = true
L["Hint: Click to cycle transport."] = true
L["Alt-Click to set up alarm."] = true
L["Ctrl-Click to broadcast in %s."] = true -- %s=channel
L["New version available! Visit github.com/psynct/NauticusClassic"] = true

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
L["Orgrimmar"] = true
L["Undercity"] = true
L["Durotar"] = true
L["Tirisfal Glades"] = true
L["Stranglethorn Vale"] = true
L["The Barrens"] = true
L["Wetlands"] = true
L["Darkshore"] = true
L["Dustwallow Marsh"] = true
L["Teldrassil"] = true
L["Feralas"] = true
L["Stormwind City"] = true
L["Ironforge"] = true
L["Deeprun Tram"] = true

-- subzones
L["Grom'gol"] = true
L["Booty Bay"] = true
L["Ratchet"] = true
L["Menethil Harbor"] = true
L["Auberdine"] = true
L["Theramore"] = true
L["Rut'Theran Village"] = true
L["Sardor Isle"] = true
L["Feathermoon"] = true
L["Forgotten Coast"] = true

-- abbreviations
L["Org"] = true -- Orgrimmar
L["UC"]  = true -- Undercity
L["GG"]  = true -- Grom'gol
L["BB"]  = true -- Booty Bay
L["Rat"] = true -- Ratchet
L["MH"]  = true -- Menethil Harbor
L["Aub"] = true -- Auberdine
L["Th"]  = true -- Theramore
L["RTV"] = true -- Rut'Theran Village
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
