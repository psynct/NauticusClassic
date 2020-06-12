
-- Spanish localisation by StiviS
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "esMX")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "Sigue con precisión los horarios de llegada y salida de barcos y zepelines en todo Azeroth y los muestra en el Minimapa y Mapa del Mundo en tiempo real."

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
L["Options"] = "Opciones"
L["General Settings"] = "Opciones Generales"
L["Map Icons"] = "Iconos del mapa"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "Opciones de visualización de iconos de transporte en el Minimapa y el Mapa del Mundo."
L["Show on Mini-Map"] = "Mostrar en minimapa"
L["Toggle display of icons on the Mini-Map."] = "Activar/Desactivar los iconos en el minimapa."
L["Show on World Map"] = "Mostrar en Mapa del Mundo"
L["Toggle display of icons on the World Map."] = "Activar/Desactivar los iconos en el Mapa del Mundo"
L["Mini-Map icon size"] = "Tamaño del icono del minimapa"
L["Change the size of the Mini-Map icons."] = "Cambia el tamaño de los iconos del minimapa."
L["World Map icon size"] = "Tamaño de icono del Mapa del Mundo"
L["Change the size of the World Map icons."] = "Cambia el tamaño de los iconos del mapa del mundo."
L["Icon framerate"] = "FPS del icono"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = "Cambie la velocidad de fotogramas de los iconos del Mapa del Mundo/Minimapa (reduzca este valor si observa problemas de rendimiento con el mapa abierto)."
L["Faction only"] = "Solo facción"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "Ocultar transportes de la facción contraria en el mapa, mostrar solo neutrales y los de tu facción."
L["Auto select transport"] = "Auto seleccionar transporte"
L["Automatically select nearest transport when standing at platform."] = "Seleccionar automáticamente el transporte más cercano cuando estés en una plataforma de embarque."
L["Alarm delay"] = "Retardo de alarma"
L["Change the alarm delay (in seconds)."] = "Cambia el retardo de la alarma (en segundos)."
L["Mini-Map button"] = "Botón del minimapa"
L["Toggle the Mini-Map button."] = "Activar/Desactivar el botón del minimapa."
L["Broadcast channel"] = "Canal de transmisión"
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = "Canal para transmitir su transporte rastreado actualmente (se transmitirá a \"%s\" si el canal seleccionado no está disponible)." -- %s=channel

-- miscellaneous
L["Arrival"] = "Llegada"
L["Departure"] = "Salida"
L["Select Transport"] = "Seleccionar Transporte"
L["Select None"] = "Seleccionar Ninguno"
L["No Transport Selected"] = "Ningun Transporte Seleccionado"
L["Not Available"] = "No Disponible"
L["N/A"] = "N/D" -- abbreviation for Not Available
L["NauticusClassic Options"] = "Opciones de NauticusClassic"
L["Alarm is now: "] = "Alarma es ahora: " -- check?
L["ON"] = "Encendido"
L["OFF"] = "Apagado"

L["List friendly faction only"] = "Mostrar sólo transportes para tu facción" -- re do?
L["Shows only neutral transports and those of your faction."] = "Muestra sólo neutrales y transportes específicos para tu facción." -- re do?
L["List relevant to current zone only"] = "Mostrar sólo transportes en tu zona actual " -- re do?
L["Shows only transports relevant to your current zone."] = "Muestra sólo transportes en tu zona actual." -- re do?
L["Hint: Click to cycle transport."] = "Consejo: Click para rotar transporte."
L["Alt-Click to set up alarm."] = "Alt-Click para crear alarma."
L["Ctrl-Click to broadcast in %s."] = "Ctrl-Click para transmitir en %s."
L["New version available! Visit github.com/psynct/NauticusClassic"] = "¡Nueva versión disponible! Visita github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "El Invocador del Trueno"
L["The Iron Eagle"] = "El Águila de Hierro"
L["The Purple Princess"] = "La Princesa Púrpura"
L["The Maiden's Fancy"] = "La Fantasía de la Doncella"
L["The Bravery"] = "El Valentía"
L["The Lady Mehley"] = "El lady Mehley"
L["The Moonspray"] = "Espuma de la Luna"
L["Feathermoon Ferry"] = "Ferri Plumaluna"
L["Deeprun Tram North"] = "Tranvía Subterráneo Norte"
L["Deeprun Tram South"] = "Tranvía Subterráneo Sur"

-- zones
L["Orgrimmar"] = "Orgrimmar"
L["Undercity"] = "Entrañas"
L["Durotar"] = "Durotar"
L["Tirisfal Glades"] = "Claros de Tirisfal"
L["Stranglethorn Vale"] = "Vega de Tuercespina"
L["The Barrens"] = "Los Baldíos"
L["Wetlands"] = "Los Humedales"
L["Darkshore"] = "Costa Oscura"
L["Dustwallow Marsh"] = "Marjal Revolcafango"
L["Teldrassil"] = "Teldrassil"
L["Feralas"] = "Feralas"
L["Stormwind City"] = "Ciudad de Ventormenta"
L["Ironforge"] = "Forjaz"
L["Deeprun Tram"] = "Tranvía Subterráneo"

-- subzones
L["Grom'gol"] = "Grom'Gol"
L["Booty Bay"] = "Bahía del Botín"
L["Ratchet"] = "Trinquete"
L["Menethil Harbor"] = "Puerto de Menethil"
L["Auberdine"] = "Auberdine"
L["Theramore"] = "Theramore"
L["Rut'Theran Village"] = "Aldea Rut'Theran"
L["Sardor Isle"] = "Isla de Sardor"
L["Feathermoon"] = "Plumaluna"
L["Forgotten Coast"] = "La Costa Olvidada"

-- abbreviations
L["Org"] = "Org" -- Orgrimmar
L["UC"]  = "Ent" -- Undercity
L["GG"]  = "GG" -- Grom'gol
L["BB"]  = "BB" -- Booty Bay
L["Rat"] = "Tri" -- Ratchet
L["MH"]  = "PM" -- Menethil Harbor
L["Aub"] = "Aub" -- Auberdine
L["Th"]  = "Th" -- Theramore
L["RTV"] = "VRT" -- Rut'Theran Village
L["FMS"] = "BPL" -- Feathermoon
L["Fer"] = "Fer" -- Feralas
L["SW"] = "Ventor" -- Stormwind City
L["IF"] = "Forjaz" -- Ironforge

-- channels
L["Say"] = "Decir"
L["Yell"] = "Gritar"
L["Party"] = "Grupo"
L["Raid"] = "Banda"
L["Guild"] = "Hermandad"
