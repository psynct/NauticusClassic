
-- Russian localisation by Yuris Auzinsh (Zuz666)
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "ruRU")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "Следит за прибытием и отправлением кораблей и дирижаблей в Азероте и показывает их на миникарте и карте мира."

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
L["Options"] = "Настройки"
L["General Settings"] = "Основные настройки"
L["Map Icons"] = "Отображение иконок"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "Настройка отображения транспорта на миникарте и карте мира."
L["Show on Mini-Map"] = "Показать на миникарте"
L["Toggle display of icons on the Mini-Map."] = "Управляет отображением иконок на миникарте."
L["Show on World Map"] = "Показать на карте мира"
L["Toggle display of icons on the World Map."] = "Управляет отображением иконок на карте мира."
L["Mini-Map icon size"] = "Размер иконок на миникарте"
L["Change the size of the Mini-Map icons."] = "Изменение размера иконок на миникарте."
L["World Map icon size"] = "Размер иконок на карте мира"
L["Change the size of the World Map icons."] = "Изменение размера иконок на карте мира."
L["Icon framerate"] = "Частота кадров"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = true
L["Faction only"] = "Своя фракция"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "Скрывает отображение транспорта противоположной фракции с карты и показывает только нейтральный транспорт и твоей фракции."
L["Auto select transport"] = "Автовыбор транспорта"
L["Automatically select nearest transport when standing at platform."] = "Автоматически выбирать транспорт ближайший к платформе, на которой стоишь."
L["Alarm delay"] = "Задержка напоминалки"
L["Change the alarm delay (in seconds)."] = "Изменение задержки напоминалки (в секундах)."
L["Mini-Map button"] = "Кнопка миникарты"
L["Toggle the Mini-Map button."] = "Управление кнопкой миникарты"
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = "Прибытие"
L["Departure"] = "Отправка"
L["Select Transport"] = "Выбрать транспорт"
L["Select None"] = "Снять выделение"
L["No Transport Selected"] = "Не выбран транспорт"
L["Not Available"] = "Не доступно"
L["N/A"] = "Н/Д" -- abbreviation for Not Available
L["NauticusClassic Options"] = "Настройки NauticusClassic"
L["Alarm is now: "] = "Напоминалка: "
L["ON"] = "Вкл."
L["OFF"] = "Выкл."

L["List friendly faction only"] = "Список только для дружественных фракций"
L["Shows only neutral transports and those of your faction."] = "Показывать только нейтральный транспорт и своей фракции."
L["List relevant to current zone only"] = "Список релевантный текущей зоне"
L["Shows only transports relevant to your current zone."] = "Показывать только транспорт релевантный текущей зоне."
L["Hint: Click to cycle transport."] = "Хинт: Левый клик мыши для циклического переключения транспорта."
L["Alt-Click to set up alarm."] = "Alt-клик для установки напоминалки."
L["Ctrl-Click to broadcast in %s."] = true
L["New version available! Visit github.com/psynct/NauticusClassic"] = "Доступна новая версия NauticusClassic! Забрать можно здесь github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "Призыватель грома"
L["The Iron Eagle"] = "Железный Орел"
L["The Purple Princess"] = "Лиловая принцесса"
L["The Maiden's Fancy"] = "Девичий каприз"
L["The Bravery"] = "Доблесть"
L["The Lady Mehley"] = "Леди Мели"
L["The Moonspray"] = "Лунная пыль"
L["Feathermoon Ferry"] = "Переправа Оперенной Луны"
L["Deeprun Tram North"] = "Подземный поезд на север"
L["Deeprun Tram South"] = "Подземный поезд на юг"

-- zones
L["Orgrimmar"] = "Оргриммар"
L["Undercity"] = "Подгород"
L["Durotar"] = "Дуротар"
L["Tirisfal Glades"] = "Тирисфальские леса"
L["Stranglethorn Vale"] = "Тернистая долина"
L["The Barrens"] = "Степи"
L["Wetlands"] = "Болотина"
L["Darkshore"] = "Темные берега"
L["Dustwallow Marsh"] = "Пылевые топи"
L["Teldrassil"] = "Тельдрассил"
L["Feralas"] = "Фералас"
L["Stormwind City"] = "Штормград"
L["Ironforge"] = "Стальгорн"
L["Deeprun Tram"] = "Подземный поезд"

-- subzones
L["Grom'gol"] = "Лагерь Гром'гол"
L["Booty Bay"] = "Пиратская Бухта"
L["Ratchet"] = "Кабестан"
L["Menethil Harbor"] = "Гавань Менетил"
L["Auberdine"] = "Аубердин"
L["Theramore"] = "Остров Терамор"
L["Rut'Theran Village"] = "Деревня Рут'теран"
L["Sardor Isle"] = "Остров Сардор"
L["Feathermoon"] = "Крепость Оперенной Луны"
L["Forgotten Coast"] = "Забытый берег"

-- abbreviations
L["Org"] = "Орг" -- Orgrimmar
L["UC"]  = "ПГ"  -- Undercity
L["GG"]  = "ГГ"  -- Grom'gol
L["BB"]  = "ББ"  -- Booty Bay
L["Rat"] = "Каб" -- Ratchet
L["MH"]  = "ГМ"  -- Menethil Harbor
L["Aub"] = "Ауб" -- Auberdine
L["Th"]  = "Тр"  -- Theramore
L["RTV"] = "ДРТ" -- Rut'Theran Village
L["FMS"] = "КОЛ" -- Feathermoon
L["Fer"] = "Фер" -- Feralas
L["SW"] = "Шг" -- Stormwind City
L["IF"] = "Сг" -- Ironforge

-- channels
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Raid"] = true
L["Guild"] = true
