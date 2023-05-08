summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["jk_uno","jk_uno_random"],Duration:1}
execute store result score #random jk_uno.int run data get entity @e[tag=jk_uno_random,limit=1] UUID[0]
kill @e[tag=jk_uno_random]
scoreboard players operation #random_max jk_uno.int -= #random_min jk_uno.int
scoreboard players add #random_max jk_uno.int 1
scoreboard players operation #random jk_uno.int %= #random_max jk_uno.int
scoreboard players operation #random jk_uno.int += #random_min jk_uno.int