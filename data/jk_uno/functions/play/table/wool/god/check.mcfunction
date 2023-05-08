# 执行实体为玩家之确认质疑（order=2的玩家）
# 检查+4玩家身上的牌色
execute as @e[limit=1,distance=..6,scores={jk_uno.color1=0}] run tag @p[distance=..8,scores={jk_uno.order=1},nbt={Inventory:[{tag:{jk_uno_color:0}}]}] add jk_uno_player_draw_4
execute as @e[limit=1,distance=..6,scores={jk_uno.color1=1}] run tag @p[distance=..8,scores={jk_uno.order=1},nbt={Inventory:[{tag:{jk_uno_color:1}}]}] add jk_uno_player_draw_4
execute as @e[limit=1,distance=..6,scores={jk_uno.color1=2}] run tag @p[distance=..8,scores={jk_uno.order=1},nbt={Inventory:[{tag:{jk_uno_color:2}}]}] add jk_uno_player_draw_4
execute as @e[limit=1,distance=..6,scores={jk_uno.color1=3}] run tag @p[distance=..8,scores={jk_uno.order=1},nbt={Inventory:[{tag:{jk_uno_color:3}}]}] add jk_uno_player_draw_4

execute unless entity @p[distance=..8,scores={jk_uno.order=1},tag=jk_uno_player_draw_4] run tag @s add jk_uno_player_draw_6