
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "ptBR")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "Rastreia os horários precisos de chegada e partida de barcos e zepelins em torno de Azeroth e os exibe no minimapa e no Mapa-múndi em tempo real."

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
L["Options"] = "Opções" 
L["General Settings"] = "Configurações gerais"
L["Map Icons"] = "Ícones do mapa"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "Opções para exibir transportes como ícones no minimapa e no Mapa-múndi."
L["Show on Mini-Map"] = "Mostrar no minimapa"
L["Toggle display of icons on the Mini-Map."] = "Alterna a exibição de ícones no minimapa."
L["Show on World Map"] = "Mostrar no Mapa-Múndi"
L["Toggle display of icons on the World Map."] = "Alterna a exibição de ícones no Mapa-múndi."
L["Mini-Map icon size"] = "Tamanho do ícone do minimapa"
L["Change the size of the Mini-Map icons."] = "Altere o tamanho dos ícones do minimapa."
L["World Map icon size"] = "Tamanho do ícone do Mapa-múndi"
L["Change the size of the World Map icons."] = "Altere o tamanho dos ícones do Mapa-múndi."
L["Icon framerate"] = "Taxa de quadros do ícone"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = "Altere a taxa de quadros dos ícones Mapa-múndi/minimapa (diminua esse valor se estiver vendo problemas de desempenho com o mapa aberto)."
L["Faction only"] = "Apenas facção"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "Oculte os transportes da facção oposta do mapa, mostrando apenas os neutros e os da sua facção."
L["Auto select transport"] = "Transporte de seleção automática"
L["Automatically select nearest transport when standing at platform."] = "Selecione automaticamente o transporte mais próximo quando estiver na plataforma."
L["Alarm delay"] = "Atraso de alarme"
L["Change the alarm delay (in seconds)."] = "Mude o atraso do alarme (em segundos)."
L["Mini-Map button"] = "Botão minimapa"
L["Toggle the Mini-Map button."] = "Alterne o botão minimapa."
L["Broadcast channel"] = "Canal de transmissão"
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = "Canal para transmitir seu transporte rastreado no momento (será transmitido para \"%s\" se o canal selecionado não estiver disponível)." -- %s=channel

-- miscellaneous
L["Arrival"] = "Chegada"
L["Departure"] = "Partida"
L["Select Transport"] = "Selecione transporte"
L["Select None"] = "Selecione nenhum"
L["No Transport Selected"] = "Nenhum transporte selecionado"
L["Not Available"] = "Não disponível"
L["N/A"] = "N/D" -- abbreviation for Not Available
L["NauticusClassic Options"] = "NauticusClassic Opções"
L["Alarm is now: "] = "O alarme está: "
L["ON"] = "ATIVADO"
L["OFF"] = "DESATIVADO"

L["List friendly faction only"] = "Listar apenas facção amigável"
L["Shows only neutral transports and those of your faction."] = "Mostra apenas transportes neutros e os da sua facção."
L["List relevant to current zone only"] = "Lista relevante apenas para a zona atual"
L["Shows only transports relevant to your current zone."] = "Mostra apenas transportes relevantes para sua zona atual."
L["Hint: Click to cycle transport."] = "Dica: Clique para alternar o transporte."
L["Alt-Click to set up alarm."] = "Clique com a tecla Alt pressionada para configurar o alarme."
L["Ctrl-Click to broadcast in %s."] = "Ctrl-clique para transmitir em %s."
L["New version available! Visit github.com/psynct/NauticusClassic"] = "Nova versão disponível! Visite github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "O Arauto do Trovão"
L["The Iron Eagle"] = "Águia de Ferro"
L["The Purple Princess"] = "O Princesa Púrpura"
L["The Maiden's Fancy"] = "O Capricho da Donzela"
L["The Bravery"] = "O Bravura"
L["The Lady Mehley"] = "O Lady Mehley"
L["The Moonspray"] = "O Asperluna"
L["Feathermoon Ferry"] = "Barco de Plumaluna"
L["Deeprun Tram North"] = "Metrô Correfundo Norte"
L["Deeprun Tram South"] = "Metrô Correfundo Sul"

-- zones
L["Orgrimmar"] = "Orgrimmar"
L["Undercity"] = "Cidade Baixa"
L["Durotar"] = "Durotar"
L["Tirisfal Glades"] = "Clareiras de Tirisfal"
L["Stranglethorn Vale"] = "Selva do Espinhaço"
L["The Barrens"] = "Sertões"
L["Wetlands"] = "Pantanal"
L["Darkshore"] = "Costa Negra"
L["Dustwallow Marsh"] = "Pântano Vadeoso"
L["Teldrassil"] = "Teldrassil"
L["Feralas"] = "Feralas"
L["Stormwind City"] = "Ventobravo"
L["Ironforge"] = "Altaforja"
L["Deeprun Tram"] = "Metrô Correfundo"

-- subzones
L["Grom'gol"] = "Grom'gol"
L["Booty Bay"] = "Angra do Butim"
L["Ratchet"] = "Vila Catraca"
L["Menethil Harbor"] = "Porto de Menethil"
L["Auberdine"] = "Auberdine"
L["Theramore"] = "Theramore"
L["Rut'Theran Village"] = "Vila de Rut'theran"
L["Sardor Isle"] = "Ilha de Sardor"
L["Feathermoon"] = "Plumaluna"
L["Forgotten Coast"] = "Costa Esquecida"

-- abbreviations
L["Org"] = "Org" -- Orgrimmar
L["UC"]  = "CB" -- Undercity
L["GG"]  = "GG" -- Grom'gol
L["BB"]  = "AB" -- Booty Bay
L["Rat"] = "VC" -- Ratchet
L["MH"]  = "PM" -- Menethil Harbor
L["Aub"] = "Aub" -- Auberdine
L["Th"]  = "Th" -- Theramore
L["RTV"] = "VRT" -- Rut'Theran Village
L["FMS"] = "PL" -- Feathermoon
L["Fer"] = "Fer" -- Feralas
L["SW"] = "VB" -- Stormwind City
L["IF"] = "AF" -- Ironforge

-- channels
L["Say"] = "Diz"
L["Yell"] = "Grita"
L["Party"] = "Grupo"
L["Raid"] = "Raide"
L["Guild"] = "Guilda"
