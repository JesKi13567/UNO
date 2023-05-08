# 玩家获胜
execute as @p[distance=..6,scores={jk_uno.player_cards=0}] run function jk_uno:play/player/win

# 显示颜色
execute as @s[scores={jk_uno.color=-1}] run fill ~-2 ~ ~-2 ~2 ~ ~2 black_wool replace
execute as @s[scores={jk_uno.color=0}] run fill ~-2 ~ ~-2 ~2 ~ ~2 red_wool replace
execute as @s[scores={jk_uno.color=1}] run fill ~-2 ~ ~-2 ~2 ~ ~2 blue_wool replace
execute as @s[scores={jk_uno.color=2}] run fill ~-2 ~ ~-2 ~2 ~ ~2 green_wool replace
execute as @s[scores={jk_uno.color=3}] run fill ~-2 ~ ~-2 ~2 ~ ~2 yellow_wool replace
execute as @s[scores={jk_uno.color=0}] run data modify entity @e[distance=..2,limit=1,tag=jk_uno_card] glow_color_override set value 15861772
execute as @s[scores={jk_uno.color=1}] run data modify entity @e[distance=..2,limit=1,tag=jk_uno_card] glow_color_override set value 401141
execute as @s[scores={jk_uno.color=2}] run data modify entity @e[distance=..2,limit=1,tag=jk_uno_card] glow_color_override set value 718086
execute as @s[scores={jk_uno.color=3}] run data modify entity @e[distance=..2,limit=1,tag=jk_uno_card] glow_color_override set value 16119046

# 显示转向
scoreboard players set @s[scores={jk_uno.rotation=2..}] jk_uno.rotation 0
execute as @s[scores={jk_uno.rotation=0}] run fill ~-3 ~ ~-2 ~-3 ~ ~2 magenta_glazed_terracotta[facing=south]
execute as @s[scores={jk_uno.rotation=0}] run fill ~-2 ~ ~-3 ~2 ~ ~-3 magenta_glazed_terracotta[facing=west]
execute as @s[scores={jk_uno.rotation=0}] run fill ~3 ~ ~-2 ~3 ~ ~2 magenta_glazed_terracotta[facing=north]
execute as @s[scores={jk_uno.rotation=0}] run fill ~-2 ~ ~3 ~2 ~ ~3 magenta_glazed_terracotta[facing=east]
execute as @s[scores={jk_uno.rotation=1}] run fill ~-3 ~ ~-2 ~-3 ~ ~2 magenta_glazed_terracotta[facing=north]
execute as @s[scores={jk_uno.rotation=1}] run fill ~-2 ~ ~-3 ~2 ~ ~-3 magenta_glazed_terracotta[facing=east]
execute as @s[scores={jk_uno.rotation=1}] run fill ~3 ~ ~-2 ~3 ~ ~2 magenta_glazed_terracotta[facing=south]
execute as @s[scores={jk_uno.rotation=1}] run fill ~-2 ~ ~3 ~2 ~ ~3 magenta_glazed_terracotta[facing=west]

execute unless entity @a[distance=..6,tag=jk_uno_player_color] run tag @s add jk_uno_table_refresh