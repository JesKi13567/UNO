scoreboard players set #draw jk_uno.int 0
tag @s remove jk_uno_table_playing
tellraw @a[team=jk_uno_player] [{"text": "[UNO] ","color": "gold","bold": true},{"text": "卡牌用完了...","color": "red"}]
execute as @a[distance=..8,team=jk_uno_player] run function jk_uno:init/set/order/reset