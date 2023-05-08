# 非uno中的玩家
scoreboard players enable @s jk_uno.join
execute if entity @e[distance=..10,tag=jk_uno_table,tag=!jk_uno_table_playing] run function jk_uno:play/player/joining
execute unless entity @e[distance=..10,tag=jk_uno_table] run scoreboard players reset @s jk_uno.join