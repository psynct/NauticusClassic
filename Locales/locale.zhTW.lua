
-- Chinese traditional localisation by Juha
local L = LibStub("AceLocale-3.0"):NewLocale("NauticusClassic", "zhTW")
if not L then return; end

-- addon description
L["Tracks the precise arrival & departure schedules of boats and Zeppelins around Azeroth and displays them on the Mini-Map and World Map in real-time."] = "追蹤環繞艾澤拉斯的飛艇及船隻正確抵達及離開的時間，並即時顯示在世界地圖與小地圖上。"

-- slash commands (no spaces!)
L["icons"] = "icons"
L["minishow"] = "minishow"
L["worldshow"] = "worldshow"
L["minisize"] = "minisize"
L["worldsize"] = "worldsize"
L["framerate"] = "framerate"
L["faction"] = "faction"
L["minibutton"] = "minibutton"
L["autoselect"] = "autoselect"
L["alarm"] = "alarm"
L["channel"] = true

-- options
L["Options"] = "選項"
L["General Settings"] = "一般設定"
L["Map Icons"] = "地圖圖示"
L["Options for displaying transports as icons on the Mini-Map and World Map."] = "此選項會在小地圖以及世界地圖上顯示運輸船的圖示。"
L["Show on Mini-Map"] = "顯示於小地圖"
L["Toggle display of icons on the Mini-Map."] = "在小地圖上顯示運輸船的圖示。"
L["Show on World Map"] = "顯示於世界地圖"
L["Toggle display of icons on the World Map."] = "在世界地圖上顯示運輸船的圖示。"
L["Mini-Map icon size"] = "小地圖圖示大小"
L["Change the size of the Mini-Map icons."] = "變更小地圖圖示的大小。"
L["World Map icon size"] = "世界地圖圖示大小"
L["Change the size of the World Map icons."] = "變更世界地圖圖示大小。"
L["Icon framerate"] = "圖標幀率"
L["Change the framerate of the World Map/Mini-Map icons (lower this value if you are seeing performance issues with the map open)."] = true
L["Faction only"] = "陣營限定"
L["Hide transports of opposite faction from the map, showing only neutral and those of your faction."] = "在地圖上隱藏敵對陣營的運輸船，僅顯示中立與我方陣營的船隻。"
L["Auto select transport"] = "自動選擇運輸船"
L["Automatically select nearest transport when standing at platform."] = "當你站在月台時自動選擇距你最近的運輸船"
L["Alarm delay"] = "警示延遲"
L["Change the alarm delay (in seconds)."] = "變更警示延遲（秒）"
L["Mini-Map button"] = "小地圖按鈕"
L["Toggle the Mini-Map button."] = "開啟小地圖按鈕。"
L["Broadcast channel"] = true
L["Channel to broadcast your currently tracked transport (will broadcast to \"%s\" if the selected channel is unavailable)."] = true -- %s=channel

-- miscellaneous
L["Arrival"] = "抵達"
L["Departure"] = "出發"
L["Select Transport"] = "選擇路線"
L["Select None"] = "選擇-無"
L["No Transport Selected"] = "沒有選擇路線"
L["Not Available"] = "無有效計時"
L["N/A"] = "--" -- abbreviation for Not Available
L["NauticusClassic Options"] = "NauticusClassic 選項"
L["Alarm is now: "] = "警示現在"
L["ON"] = "啟用"
L["OFF"] = "關閉"

L["List friendly faction only"] = "僅顯示友方陣營"
L["Shows only neutral transports and those of your faction."] = "僅顯示中立及我方陣營的傳輸船。"
L["List relevant to current zone only"] = "僅顯示目前區域"
L["Shows only transports relevant to your current zone."] = "只顯示你目前區域的傳輸船"
L["Hint: Click to cycle transport."] = "提示: 左鍵：運輸週期"
L["Alt-Click to set up alarm."] = "Alt+左鍵：設定鬧鈴"
L["Ctrl-Click to broadcast in %s."] = true
L["New version available! Visit github.com/psynct/NauticusClassic"] = "新版本可用！訪問 github.com/psynct/NauticusClassic"

-- ship names
L["The Thundercaller"] = "喚雷者號"
L["The Iron Eagle"] = "鋼鐵雄鷹號"
L["The Purple Princess"] = "紫色公主號"
L["The Maiden's Fancy"] = "少女之愛號"
L["The Bravery"] = "勇氣號"
L["The Lady Mehley"] = "梅利女士號"
L["The Moonspray"] = "月霧號"
L["Feathermoon Ferry"] = "羽月渡口"
L["Deeprun Tram North"] = "礦道地鐵北面"
L["Deeprun Tram South"] = "礦道地鐵南面"

-- zones
L["Orgrimmar"] = "奧格瑪"
L["Undercity"] = "幽暗城"
L["Durotar"] = "杜洛塔"
L["Tirisfal Glades"] = "提里斯法林地"
L["Stranglethorn Vale"] = "荊棘谷"
L["The Barrens"] = "貧瘠之地"
L["Wetlands"] = "濕地"
L["Darkshore"] = "黑海岸"
L["Dustwallow Marsh"] = "塵泥沼澤"
L["Teldrassil"] = "泰達希爾"
L["Feralas"] = "菲拉斯"
L["Stormwind City"] = "暴風城"
L["Ironforge"] = "鐵爐堡"
L["Deeprun Tram"] = "礦道地鐵"

-- subzones
L["Grom'gol"] = "格羅姆高營地"
L["Booty Bay"] = "藏寶海灣"
L["Ratchet"] = "棘齒城"
L["Menethil Harbor"] = "米奈希爾港"
L["Auberdine"] = "奧伯丁"
L["Theramore"] = "塞拉摩島"
L["Rut'Theran Village"] = "魯瑟蘭村"
L["Sardor Isle"] = "瓦拉船台"
L["Feathermoon"] = "羽月要塞"
L["Forgotten Coast"] = "被遺忘的海岸"

-- abbreviations
L["Org"] = "奧格"   -- Orgrimmar
L["UC"]  = "幽暗"   -- Undercity
L["GG"]  = "格羅姆高" -- Grom'gol
L["BB"]  = "藏寶"   -- Booty Bay
L["Rat"] = "棘齒"   -- Ratchet
L["MH"]  = "米奈希爾" -- Menethil Harbor
L["Aub"] = "羽月"   -- Auberdine
L["Th"]  = "塞拉摩"  -- Theramore
L["RTV"] = "魯瑟蘭"  -- Rut'Theran Village
L["FMS"] = "羽月" -- Feathermoon
L["Fer"] = "遺忘海岸" -- Feralas
L["SW"] = "暴風城" -- Stormwind City
L["IF"] = "鐵爐堡" -- Ironforge

-- channels
L["Say"] = true
L["Yell"] = true
L["Party"] = true
L["Raid"] = true
L["Guild"] = true
