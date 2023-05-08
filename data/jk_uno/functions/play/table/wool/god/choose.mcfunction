# 执行实体为玩家之选择质疑（已右键）
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:red_wool"},Glowing:1b}] run tag @s add jk_uno_player_god_no
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:blue_wool"},Glowing:1b}] run tag @s add jk_uno_player_god_yes
execute as @e[distance=..6,tag=jk_uno_color] at @s run data merge entity @s {item:{id:"minecraft:air",Count:1b},Glowing:0b}

execute as @s[tag=jk_uno_player_god_no] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "我选择","color": "white"},{"text": " 加牌 ","color": "red"},{"text": "！","color": "white"}]
execute as @s[tag=jk_uno_player_god_yes] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "我选择","color": "white"},{"text": " 质疑 ","color": "aqua"},{"text": "！","color": "white"}]

tag @s[tag=jk_uno_player_god_no] add jk_uno_player_draw_4
execute as @s[tag=jk_uno_player_god_yes] run function jk_uno:play/table/wool/god/check
tag @s[tag=jk_uno_player_draw_4] add jk_uno_player_skip
tag @s[tag=jk_uno_player_draw_6] add jk_uno_player_skip

tag @s remove jk_uno_player_god_no
tag @s remove jk_uno_player_god_yes

tag @s remove jk_uno_player_god