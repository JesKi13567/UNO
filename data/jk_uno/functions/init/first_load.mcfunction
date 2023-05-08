# jkuno → 10 11 21 14 15
function jk_uno:init/reset
scoreboard objectives add jk_uno.int dummy "整型数字"
scoreboard players set #load jk_uno.int 1
scoreboard players set #13 jk_uno.int 13
scoreboard players set #2 jk_uno.int 2

scoreboard objectives add jk_uno.join trigger "uno报名"
scoreboard objectives add jk_uno.food food "饱食度"
scoreboard objectives add jk_uno.hp health "生命值"

scoreboard objectives add jk_uno.player_cards dummy "卡牌余量"
scoreboard objectives add jk_uno.player_num dummy "玩家人数"

scoreboard objectives add jk_uno.time dummy "时间"

scoreboard objectives add jk_uno.order dummy "玩家顺序序号"
scoreboard objectives add jk_uno.rotation dummy "转向"
scoreboard objectives add jk_uno.card_draw dummy "卡牌抓取数"
scoreboard objectives add jk_uno.card_type dummy "卡牌种类标号"
scoreboard objectives add jk_uno.color dummy "当前颜色"
scoreboard objectives add jk_uno.color1 dummy "上一颜色"
scoreboard objectives add jk_uno.remain dummy "牌堆剩余"

function jk_uno:init/card_board

team add jk_uno_player "玩uno的玩家队伍"
team modify jk_uno_player prefix {"text": "[UNO] ","color": "gold"}
team modify jk_uno_player color gold

function jk_uno:init/set/table/give/4
function jk_uno:init/ticks/load