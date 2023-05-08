# 执行实体为掉落物之丢出的牌
execute store result score @s jk_uno.card_type run data get entity @s Item.tag.CustomModelData
scoreboard players remove @s jk_uno.card_type 211420

# 黑牌单独处理
tag @s[scores={jk_uno.card_type=0..1}] add jk_uno_card_black
scoreboard players set @s[tag=jk_uno_card_black] jk_uno.color -1
scoreboard players set @s[tag=jk_uno_card_black,scores={jk_uno.card_type=0}] jk_uno.card_type -1
scoreboard players set @s[tag=jk_uno_card_black,scores={jk_uno.card_type=1}] jk_uno.card_type -2

# 判断类型
scoreboard players remove @s[tag=!jk_uno_card_black] jk_uno.card_type 2
scoreboard players operation @s[tag=!jk_uno_card_black] jk_uno.color = @s jk_uno.card_type
scoreboard players operation @s[tag=!jk_uno_card_black] jk_uno.color /= #13 jk_uno.int
scoreboard players operation @s[tag=!jk_uno_card_black] jk_uno.card_type %= #13 jk_uno.int

execute if score @s[tag=!jk_uno_card_black] jk_uno.color = @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno.color run tag @s add jk_uno_card_ready
execute if score @s[tag=!jk_uno_card_black] jk_uno.card_type = @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno.card_type run tag @s add jk_uno_card_ready
tag @s[tag=jk_uno_card_black] add jk_uno_card_ready

# 黑牌时记录上一颜色
execute as @s[tag=jk_uno_card_ready,tag=jk_uno_card_black] as @e[limit=1,distance=..6,tag=jk_uno_table] run scoreboard players operation @s jk_uno.color1 = @s jk_uno.color

scoreboard players operation @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno.color = @s[tag=jk_uno_card_ready] jk_uno.color
scoreboard players operation @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno.card_type = @s[tag=jk_uno_card_ready] jk_uno.card_type

execute as @s[tag=!jk_uno_card_ready] run tellraw @p[tag=jk_uno_player_turn] [{"text": "[UNO]","color": "gold","bold": true},{"text": " ❌ 出牌不符合规则！","color": "red"}]
execute as @s[tag=!jk_uno_card_ready] run playsound entity.villager.no player @p[tag=jk_uno_player_turn]
tp @s[tag=!jk_uno_card_ready] @p[tag=jk_uno_player_turn]

# 桌子更新
execute as @s[tag=jk_uno_card_ready,tag=!jk_uno_card_black] as @e[limit=1,distance=..6,tag=jk_uno_table] at @s run function jk_uno:play/table/card/show
execute as @s[tag=jk_uno_card_ready] run tag @e[limit=1,distance=..6,tag=jk_uno_table] remove jk_uno_table_refresh

# 变色单独处理
execute as @s[tag=jk_uno_card_black] run tag @p[distance=..6,tag=jk_uno_player_turn] add jk_uno_player_color
execute as @p[distance=..6,tag=jk_uno_player_turn,tag=jk_uno_player_color] run tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "变色！","color": "white"}]
execute as @s[tag=jk_uno_card_ready] run tag @p[distance=..6] remove jk_uno_player_turn