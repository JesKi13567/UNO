# 2t
## 不受外界打扰
team leave @s[gamemode=spectator]
effect give @s[scores={jk_uno.hp=..19}] resistance 1 4 true
effect give @s[scores={jk_uno.food=..19}] saturation 1 4 true
scoreboard players reset @s jk_uno.join

# 防止提前出牌
tp @e[distance=..2.4,type=item,nbt={Item:{tag:{jk_uno:1}}}] @s[tag=!jk_uno_player_turn]

## 出牌阶段
# init保证只能添加一次
tag @s[scores={jk_uno.order=1},tag=!jk_uno_player_init,tag=!jk_uno_player_color,tag=!jk_uno_player_skip] add jk_uno_player_turn
# 可出牌时也可抓牌
tag @s[tag=!jk_uno_player_init,tag=jk_uno_player_turn] add jk_uno_player_draw_can
# 对init使用的函数
tag @s[scores={jk_uno.order=1}] add jk_uno_player_init
execute as @s[tag=jk_uno_player_init] run function jk_uno:play/player/play_cards_init
tag @s[tag=!jk_uno_player_init] remove jk_uno_player_draw_can

# 检查卡牌数量并显示
execute store result score @s jk_uno.player_cards run clear @s paper{jk_uno:1} 0
data modify block ~ ~-1 ~ Text2 set value '{"score":{"name":"@p[distance=..2]","objective":"jk_uno.player_cards"},"color":"aqua"}'
data modify entity @e[limit=1,sort=nearest,distance=..4,tag=jk_uno_player_cards] text set from block ~ ~-1 ~ Text2

# 喊uno资格 & 被抓到+2
tag @s[tag=jk_uno_player_uno_said] remove jk_uno_player_uno_catch
tag @s[scores={jk_uno.player_cards=2..}] remove jk_uno_player_uno_catch
tag @s[scores={jk_uno.player_cards=2..}] remove jk_uno_player_uno_catched
tag @s[scores={jk_uno.player_cards=3..}] remove jk_uno_player_uno_can
tag @s[scores={jk_uno.player_cards=3..}] remove jk_uno_player_uno_said

tag @s[scores={jk_uno.player_cards=..1},tag=!jk_uno_player_uno_said,tag=!jk_uno_player_uno_catched] add jk_uno_player_uno_catch
tag @s[scores={jk_uno.player_cards=..2}] add jk_uno_player_uno_can
tag @s[tag=jk_uno_player_uno_catched] add jk_uno_player_draw_2
execute as @s[tag=jk_uno_player_uno_catched] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "被抓住啦！","color": "white"}]

execute as @s[tag=jk_uno_player_uno_can,tag=!jk_uno_player_uno_said] unless data entity @s RootVehicle run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "UNO！","color": "white"}]
execute as @s[tag=jk_uno_player_uno_can,tag=!jk_uno_player_uno_said] unless data entity @s RootVehicle run tag @s add jk_uno_player_uno_said

# 抓没喊uno的玩家（右键）
execute as @s[tag=!jk_uno_player_color] if data entity @e[limit=1,sort=nearest,distance=..1.2,tag=jk_uno_touch,type=minecraft:interaction] interaction run function jk_uno:play/table/ray/summon

# 判定 +4 牌（右键）
execute as @s[tag=jk_uno_player_god] run function jk_uno:play/table/ray/summon
execute as @s[tag=jk_uno_player_god] if data entity @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_touch,type=minecraft:interaction] interaction run function jk_uno:play/table/wool/god/choose

# 抓牌
execute as @s[tag=jk_uno_player_draw_2] run function jk_uno:play/table/card/draw/2
execute as @s[tag=jk_uno_player_draw_4] run function jk_uno:play/table/card/draw/4
execute as @s[tag=jk_uno_player_draw_6] run function jk_uno:play/table/card/draw/6

# 副手处理
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{jk_uno:1}}]},nbt=!{SelectedItem:{tag:{jk_uno:1}}}] run function jk_uno:play/player/offhand

# 坐上椅子
ride @s[gamemode=!spectator] mount @e[limit=1,sort=nearest,tag=jk_uno_chair]