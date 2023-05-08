# 执行实体为玩家之选择颜色（已右键）
# 设置当前颜色
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:red_wool"},Glowing:1b}] run scoreboard players set @e[distance=..6,tag=jk_uno_table] jk_uno.color 0
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:blue_wool"},Glowing:1b}] run scoreboard players set @e[distance=..6,tag=jk_uno_table] jk_uno.color 1
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:green_wool"},Glowing:1b}] run scoreboard players set @e[distance=..6,tag=jk_uno_table] jk_uno.color 2
execute if entity @e[distance=..6,tag=jk_uno_color,nbt={item:{Count:1b,id:"minecraft:yellow_wool"},Glowing:1b}] run scoreboard players set @e[distance=..6,tag=jk_uno_table] jk_uno.color 3

function jk_uno:play/table/card/special/color_changed