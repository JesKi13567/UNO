# 执行实体为玩家
tag @s remove jk_uno_player_color

execute as @e[distance=..6,tag=jk_uno_color] at @s run data merge entity @s {item:{id:"minecraft:air",Count:1b},Glowing:0b}

execute as @e[distance=..6,tag=jk_uno_table,scores={jk_uno.color=0}] run data merge entity @s {CustomName:'{"text": "变红！","color": "red"}'}
execute as @e[distance=..6,tag=jk_uno_table,scores={jk_uno.color=1}] run data merge entity @s {CustomName:'{"text": "变蓝！","color": "blue"}'}
execute as @e[distance=..6,tag=jk_uno_table,scores={jk_uno.color=2}] run data merge entity @s {CustomName:'{"text": "变绿！","color": "green"}'}
execute as @e[distance=..6,tag=jk_uno_table,scores={jk_uno.color=3}] run data merge entity @s {CustomName:'{"text": "变黄！","color": "yellow"}'}

tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"selector":"@e[limit=1,distance=..6,tag=jk_uno_table]"}]

execute if entity @e[distance=..6,tag=jk_uno_table,scores={jk_uno.card_type=-2}] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "要质疑吗？","color": "white"}]
execute if entity @e[distance=..6,tag=jk_uno_table,scores={jk_uno.card_type=-2}] run tag @p[distance=..8,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_god