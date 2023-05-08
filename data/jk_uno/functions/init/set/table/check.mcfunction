# 2t
execute if entity @e[distance=.1..16,tag=jk_uno] run tellraw @a[distance=..4] {"text": "此处不能放置一个新桌子！","color": "red"}
execute unless entity @e[distance=.1..16,tag=jk_uno] as @s[tag=jk_uno_table_set_4] run function jk_uno:init/set/table/4

kill @s