tellraw @a[distance=..16] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "本局获胜！","color": "white"}]
tag @e[limit=1,sort=nearest,distance=..8,tag=jk_uno_table] remove jk_uno_table_playing
execute as @a[distance=..8,team=jk_uno_player] run function jk_uno:init/set/order/reset