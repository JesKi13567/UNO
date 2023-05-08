# 出牌显示
effect give @s[tag=jk_uno_player_turn] glowing 1 0 true
effect give @s[tag=jk_uno_player_color] glowing 1 0 true
effect clear @s[tag=!jk_uno_player_turn,tag=!jk_uno_player_color] glowing

# 下位玩家
execute as @s[tag=!jk_uno_player_color,tag=!jk_uno_player_turn,tag=!jk_uno_player_skip] unless entity @p[distance=..8,tag=jk_uno_player_god] run scoreboard players remove @a[distance=..8,team=jk_uno_player] jk_uno.order 1
scoreboard players operation @s[scores={jk_uno.order=0}] jk_uno.order = @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno.player_num

# 手动跳过（副手）
tag @s[tag=!jk_uno_player_draw_can,nbt={Inventory:[{Slot:-106b,tag:{jk_uno:1}}]}] remove jk_uno_player_turn
execute as @s[scores={jk_uno.order=1},tag=!jk_uno_player_skip,tag=!jk_uno_player_color,tag=!jk_uno_player_draw_can,tag=!jk_uno_player_turn] unless entity @p[distance=..8,tag=jk_uno_player_god] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "PASS！","color": "white"}]
# 强制被跳过
execute as @s[tag=jk_uno_player_skip,tag=!jk_uno_player_draw_2,tag=!jk_uno_player_draw_4,tag=!jk_uno_player_draw_6] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "我被跳过了！","color": "white"}]
tag @s remove jk_uno_player_skip

# 选择颜色（右键）
execute as @s[tag=jk_uno_player_color] run function jk_uno:play/table/ray/summon
execute as @s[tag=jk_uno_player_color] if data entity @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_touch,type=minecraft:interaction] interaction run function jk_uno:play/table/wool/color/choose

# 抓牌（左键）
execute as @s[tag=jk_uno_player_draw_can] if data entity @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_touch,type=minecraft:interaction] attack run function jk_uno:play/table/card/draw/global

# 游玩提示
title @s actionbar ["",{"text": "出牌 ","color": "gold"},"[",{"keybind":"key.drop"},"]",{"text": " 抓牌 ","color": "gold"},"[",{"keybind":"key.attack"},"]",{"text": " 取消出牌 ","color": "gold"},"[",{"keybind":"key.swapOffhand"},"]",{"text": " 选择颜色/抓人 ","color": "gold"},"[",{"keybind":"key.use"},"]",{"text": " 喊uno ","color": "gold"},"[",{"keybind":"key.sneak"},"]"]
tellraw @s[tag=jk_uno_player_draw_can,nbt={Inventory:[{Slot:-106b,tag:{jk_uno:1}}]}] {"text": " ❌ 请先抓牌再跳过本回合！","color": "red","bold": true}

# 移除init标签
tag @s[scores={jk_uno.order=2..}] remove jk_uno_player_init