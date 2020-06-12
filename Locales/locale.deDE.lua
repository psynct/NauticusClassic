
-- German localisation by Alex6002 & LarryCurse
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "deDE")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "Verfolgt die genaue Position sowie Ankunfts- und Abfahrtszeiten von Booten und Zeppelinen in Azeroth an und zeigt sie auf der Minikarte und der Weltkarte in Echtzeit an."

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
L["Options"] = "Optionen"
L["General Settings"] = "Allgemeine Einstellungen"
L["Map Icons"] = "Kartenicons"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "Optionen für die Darstellung der Transportmittel als Icons auf der Minikarte und der Weltkarte."
L["Show on Mini-Map"] = "Zeige auf der Minikarte"
L["Toggle display of icons on the Mini-Map."] = "Ein-/Ausschalten der Anzeige der Icons auf der Minikarte."
L["Show on World Map"] = "Zeige auf der Weltkarte"
L["Toggle display of icons on the World Map."] = "Ein-/Ausschalten der Anzeige der Icons auf der Weltkarte."
L["Mini-Map icon size"] = "Minikarte Icongröße"
L["Change the size of the Mini-Map icons."] = "Ändert die Größe der Minikarte Icons."
L["World Map icon size"] = "Weltkarte Icongröße"
L["Change the size of the World Map icons."] = "Ändert die Größe der Weltkarte Icons."
L["Icon framerate"] = "Icon framerate"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = true
L["Faction only"] = "Nur Fraktion"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "Verstecke Transportmittel der gegnerischen Fraktion auf der Karte und zeige nur neutrale und die von Deiner Fraktion."
L["Auto select transport"] = "Automatische Transportauswahl"
L["Automatically select nearest transport when standing at platform."] = "Automatisch den nächstgelegenen Transport auswählen, wenn man auf einer Plattform steht."
L["Alarm delay"] = "Alarm Zeit"
L["Change the alarm delay (in seconds)."] = "Ändert die Zeit ab, wann der Alarm vor dem Abflug ertönen soll (in Sekunden)."
L["Mini-Map button"] = "Minikarte Button"
L["Toggle the Mini-Map button."] = "Ein-/Ausschalten des Minimap Button"
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = "Ankunft"
L["Departure"] = "Abfahrt"
L["Select Transport"] = "Route auswählen"
L["Select None"] = "Nichts auswählen"
L["No Transport Selected"] = "Keine Route ausgewählt"
L["Not Available"] = "Nicht Erreichbar"
L["N/A"] = "N/A" -- abbreviation for Not Available
L["NauticusClassic Options"] = "NauticusClassic Optionen"
L["Alarm is now: "] = "Der Alarm ist jetzt: "
L["ON"] = "An"
L["OFF"] = "Aus"

L["List friendly faction only"] = "Zeige nur Transportmittel freundlicher Fraktionen" -- re do?
L["Shows only neutral transports and those of your faction."] = "Zeigt nur neutrale und Transportmittel deiner Fraktion." -- check?
L["List relevant to current zone only"] = "Zeige nur Transportmittel der momentanen Zone" -- re do?
L["Shows only transports relevant to your current zone."] = "Zeigt nur Transportmittel der momentanen Zone." -- check?
L["Hint: Click to cycle transport."] = "Hinweis: Klick - Reiseroute auswählen."
L["Alt-Click to set up alarm."] = "Alt-Klick - Alarm aktivieren."
L["Ctrl-Click to broadcast in %s."] = true
L["New version available! Visit github.com/psynct/NauticusClassic"] = "Neue Version verfügbar! Schau auf github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "Die Donnersturm"
L["The Iron Eagle"] = "Der Eiserne Adler"
L["The Purple Princess"] = "Die Prinzessin Violetta"
L["The Maiden's Fancy"] = "Die Launische Minna"
L["The Bravery"] = "Die Bravado"
L["The Lady Mehley"] = "Die Lady Mehley"
L["The Moonspray"] = "Die Mondgischt"
L["Feathermoon Ferry"] = "Mondfederfähre"
L["Deeprun Tram North"] = "Die Tiefenbahn nach Norden"
L["Deeprun Tram South"] = "Die Tiefenbahn nach Süd"

-- zones
L["Orgrimmar"] = "Orgrimmar"
L["Undercity"] = "Undercity"
L["Durotar"] = "Durotar"
L["Tirisfal Glades"] = "Tirisfal"
L["Stranglethorn Vale"] = "Schlingendorntal"
L["The Barrens"] = "Das Brachland"
L["Wetlands"] = "Sumpfland"
L["Darkshore"] = "Dunkelküste"
L["Dustwallow Marsh"] = "Marschen von Dustwallow"
L["Teldrassil"] = "Teldrassil"
L["Feralas"] = "Feralas"
L["Stormwind City"] = "Stormwind"
L["Ironforge"] = "Ironforge"
L["Deeprun Tram"] = "Die Tiefenbahn"

-- subzones
L["Grom'gol"] = "Grom'gol"
L["Booty Bay"] = "Booty Bay"
L["Ratchet"] = "Ratchet"
L["Menethil Harbor"] = "Hafen von Menethil"
L["Auberdine"] = "Auberdine"
L["Theramore"] = "Theramore"
L["Rut'Theran Village"] = "Rut'Theran"
L["Sardor Isle"] = "Insel Sardor"
L["Feathermoon"] = "Feathermoon"
L["Forgotten Coast"] = "Die vergessene Küste"

-- abbreviations
L["Org"] = "Org"  -- Orgrimmar
L["UC"]  = "Us"   -- Undercity
L["GG"]  = "GG"   -- Grom'gol
L["BB"]  = "BB"   -- Booty Bay
L["Rat"] = "Rat"  -- Ratchet
L["MH"]  = "HM" -- Menethil Harbor
L["Aub"] = "Aub"  -- Auberdine
L["Th"]  = "Ther" -- Theramore
L["RTV"] = "Rut"  -- Rut'Theran Village
L["FMS"] = "Mond" -- Feathermoon
L["Fer"] = "Fer"  -- Feralas
L["SW"] = "SW" -- Stormwind City
L["IF"] = "IF" -- Ironforge

-- channels
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Raid"] = true
L["Guild"] = true
