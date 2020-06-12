
-- French localisation by thelys
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "frFR")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "Permet de suivre les arrivées et départs des bateaux et zeppelins sur Azeroth et de les afficher en temps réel sur la carte du monde et la minicarte."

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
L["Options"] = "Options"
L["General Settings"] = "Paramètres généraux"
L["Map Icons"] = "Icônes de la carte"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "Afficher les transports en tant qu'icônes sur la carte et la minicarte"
L["Show on Mini-Map"] = "Afficher sur la minicarte"
L["Toggle display of icons on the Mini-Map."] = "Afficher les icônes sur la minicarte"
L["Show on World Map"] = "Afficher sur la carte du monde"
L["Toggle display of icons on the World Map."] = "Afficher les icônes sur la carte du monde"
L["Mini-Map icon size"] = "Taille des icônes de minicarte"
L["Change the size of the Mini-Map icons."] = "Changer la taille des icônes de la minicarte."
L["World Map icon size"] = "Taille des icônes de carte du monde"
L["Change the size of the World Map icons."] = "Changer la taille des icônes de la carte du monde."
L["Icon framerate"] = "Framerate d'icône"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = true
L["Faction only"] = "Seulement votre faction"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "Ne montrer que les transports neutres et ceux de votre faction"
L["Auto select transport"] = "Sélection auto du transport"
L["Automatically select nearest transport when standing at platform."] = "Sélection auto du transport le plus proche quand on est sur un quai."
L["Alarm delay"] = "Délai d'alarme"
L["Change the alarm delay (in seconds)."] = "Changer le délai d'alarme (en secondes)."
L["Mini-Map button"] = "Bouton de la minicarte"
L["Toggle the Mini-Map button."] = "Afficher le bouton de la minicarte"
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = "Arrivée"
L["Departure"] = "Départ"
L["Select Transport"] = "Transport"
L["Select None"] = "Aucun"
L["No Transport Selected"] = "Aucun Transport"
L["Not Available"] = "Non Disponible"
L["N/A"] = "ND" -- abbreviation for Not Available
L["NauticusClassic Options"] = "Options de NauticusClassic"
L["Alarm is now: "] = "L'alarme est maintenant"
L["ON"] = "ACTIVÉE"
L["OFF"] = "DÉSACTIVÉE"

L["List friendly faction only"] = "Ne montrer que les transports de votre faction" -- re do?
L["Shows only neutral transports and those of your faction."] = "Ne montrer que les transports neutres et ceux de votre faction." -- re do?
L["List relevant to current zone only"] = "Ne montrer que les transports de la zone courante" -- re do?
L["Shows only transports relevant to your current zone."] = "Ne montrer que les transports de la zone courante." -- re do?
L["Hint: Click to cycle transport."] = "Astuce: Cliquez pour changer de transport."
L["Alt-Click to set up alarm."] = "Alt-Clic pour créer une alarme."
L["Ctrl-Click to broadcast in %s."] = true
L["New version available! Visit github.com/psynct/NauticusClassic"] = "Nouvelle version disponible ! Visitez github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "Le Mande-tonnerre"
L["The Iron Eagle"] = "L'Aigle de fer"
L["The Purple Princess"] = "La Princesse violette"
L["The Maiden's Fancy"] = "Le Caprice de la vierge"
L["The Bravery"] = "La Bravoure"
L["The Lady Mehley"] = "La Dame Mehley"
L["The Moonspray"] = "L'Écume de lune"
L["Feathermoon Ferry"] = "Bac de Pennelune"
L["Deeprun Tram North"] = "Tram des profondeurs Nord"
L["Deeprun Tram South"] = "Tram des profondeurs Sud"

-- zones
L["Orgrimmar"] = "Orgrimmar"
L["Undercity"] = "Undercity"
L["Durotar"] = "Durotar"
L["Tirisfal Glades"] = "Clairières de Tirisfal"
L["Stranglethorn Vale"] = "Vallée de Strangleronce (Stranglethorn Vale)"
L["The Barrens"] = "Les Tarides (the Barrens)"
L["Wetlands"] = "Les Paluns (Wetlands)"
L["Darkshore"] = "Sombrivage (Darkshore)"
L["Dustwallow Marsh"] = "Marécage d'Âprefange (Dustwallow Marsh)"
L["Teldrassil"] = "Teldrassil"
L["Feralas"] = "Feralas"
L["Stormwind City"] = "Cité de Stormwind"
L["Ironforge"] = "Ironforge"
L["Deeprun Tram"] = "Tram des profondeurs"

-- subzones
L["Grom'gol"] = "Grom'gol"
L["Booty Bay"] = "Baie-du-Butin"
L["Ratchet"] = "Ratchet"
L["Menethil Harbor"] = "Port de Menethil"
L["Auberdine"] = "Auberdine"
L["Theramore"] = "Theramore"
L["Rut'Theran Village"] = "Rut'Theran"
L["Sardor Isle"] = "Ile de Sardor"
L["Feathermoon"] = "Feathermoon"
L["Forgotten Coast"] = "La Côte oubliée"

-- abbreviations
L["Org"] = "Org" -- Orgrimmar
L["UC"]  = "UC" -- Undercity
L["GG"]  = "GrG" -- Grom'gol
L["BB"]  = "BdB" -- Booty Bay
L["Rat"] = "Rat" -- Ratchet
L["MH"]  = "PdM" -- Menethil Harbor
L["Aub"] = "Aub" -- Auberdine
L["Th"]  = "The" -- Theramore
L["RTV"] = "Rut" -- Rut'Theran Village
L["FMS"] = "Pen" -- Feathermoon
L["Fer"] = "Fer" -- Feralas
L["SW"] = "SW" -- Stormwind City
L["IF"] = "IF" -- Ironforge

-- channels
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Raid"] = true
L["Guild"] = true
