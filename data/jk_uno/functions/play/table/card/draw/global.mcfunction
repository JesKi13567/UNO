tag @s remove jk_uno_player_draw_can
execute as @s[type=player] run scoreboard players set #random_min jk_uno.int 1
execute as @s[type=marker] run scoreboard players set #random_min jk_uno.int 9
scoreboard players set #random_max jk_uno.int 112
function jk_uno:play/random
scoreboard players operation #draw jk_uno.int = #random jk_uno.int

# 牌用完了
execute as @e[limit=1,distance=..6,tag=jk_uno_table,scores={jk_uno.remain=..0}] at @s run function jk_uno:play/table/end_with_no_cards

execute if score #draw jk_uno.int matches 1..4 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_s0 matches 1.. run function jk_uno:play/table/card/draw/get/s/0
execute if score #draw jk_uno.int matches 5..8 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_s1 matches 1.. run function jk_uno:play/table/card/draw/get/s/1

execute if score #draw jk_uno.int matches 9..10 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r0 matches 1.. run function jk_uno:play/table/card/draw/get/r/0
execute if score #draw jk_uno.int matches 11..12 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r1 matches 1.. run function jk_uno:play/table/card/draw/get/r/1 
execute if score #draw jk_uno.int matches 13..14 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r2 matches 1.. run function jk_uno:play/table/card/draw/get/r/2 
execute if score #draw jk_uno.int matches 15..16 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r3 matches 1.. run function jk_uno:play/table/card/draw/get/r/3 
execute if score #draw jk_uno.int matches 17..18 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r4 matches 1.. run function jk_uno:play/table/card/draw/get/r/4 
execute if score #draw jk_uno.int matches 19..20 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r5 matches 1.. run function jk_uno:play/table/card/draw/get/r/5 
execute if score #draw jk_uno.int matches 21..22 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r6 matches 1.. run function jk_uno:play/table/card/draw/get/r/6 
execute if score #draw jk_uno.int matches 23..24 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r7 matches 1.. run function jk_uno:play/table/card/draw/get/r/7 
execute if score #draw jk_uno.int matches 25..26 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r8 matches 1.. run function jk_uno:play/table/card/draw/get/r/8 
execute if score #draw jk_uno.int matches 27..28 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r9 matches 1.. run function jk_uno:play/table/card/draw/get/r/9 
execute if score #draw jk_uno.int matches 29..30 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r10 matches 1.. run function jk_uno:play/table/card/draw/get/r/10
execute if score #draw jk_uno.int matches 31..32 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r11 matches 1.. run function jk_uno:play/table/card/draw/get/r/11
execute if score #draw jk_uno.int matches 33..34 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_r12 matches 1.. run function jk_uno:play/table/card/draw/get/r/12

execute if score #draw jk_uno.int matches 35..36 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b0 matches 1.. run function jk_uno:play/table/card/draw/get/b/0 
execute if score #draw jk_uno.int matches 37..38 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b1 matches 1.. run function jk_uno:play/table/card/draw/get/b/1 
execute if score #draw jk_uno.int matches 39..40 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b2 matches 1.. run function jk_uno:play/table/card/draw/get/b/2 
execute if score #draw jk_uno.int matches 41..42 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b3 matches 1.. run function jk_uno:play/table/card/draw/get/b/3 
execute if score #draw jk_uno.int matches 43..44 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b4 matches 1.. run function jk_uno:play/table/card/draw/get/b/4 
execute if score #draw jk_uno.int matches 45..46 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b5 matches 1.. run function jk_uno:play/table/card/draw/get/b/5
execute if score #draw jk_uno.int matches 47..48 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b6 matches 1.. run function jk_uno:play/table/card/draw/get/b/6
execute if score #draw jk_uno.int matches 49..50 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b7 matches 1.. run function jk_uno:play/table/card/draw/get/b/7
execute if score #draw jk_uno.int matches 51..52 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b8 matches 1.. run function jk_uno:play/table/card/draw/get/b/8
execute if score #draw jk_uno.int matches 53..54 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b9 matches 1.. run function jk_uno:play/table/card/draw/get/b/9
execute if score #draw jk_uno.int matches 55..56 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b10 matches 1.. run function jk_uno:play/table/card/draw/get/b/10
execute if score #draw jk_uno.int matches 57..58 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b11 matches 1.. run function jk_uno:play/table/card/draw/get/b/11
execute if score #draw jk_uno.int matches 59..60 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_b12 matches 1.. run function jk_uno:play/table/card/draw/get/b/12

execute if score #draw jk_uno.int matches 61..62 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g0 matches 1.. run function jk_uno:play/table/card/draw/get/g/0
execute if score #draw jk_uno.int matches 63..64 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g1 matches 1.. run function jk_uno:play/table/card/draw/get/g/1
execute if score #draw jk_uno.int matches 65..66 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g2 matches 1.. run function jk_uno:play/table/card/draw/get/g/2
execute if score #draw jk_uno.int matches 67..68 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g3 matches 1.. run function jk_uno:play/table/card/draw/get/g/3
execute if score #draw jk_uno.int matches 69..70 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g4 matches 1.. run function jk_uno:play/table/card/draw/get/g/4
execute if score #draw jk_uno.int matches 71..72 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g5 matches 1.. run function jk_uno:play/table/card/draw/get/g/5
execute if score #draw jk_uno.int matches 73..74 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g6 matches 1.. run function jk_uno:play/table/card/draw/get/g/6
execute if score #draw jk_uno.int matches 75..76 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g7 matches 1.. run function jk_uno:play/table/card/draw/get/g/7
execute if score #draw jk_uno.int matches 77..78 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g8 matches 1.. run function jk_uno:play/table/card/draw/get/g/8
execute if score #draw jk_uno.int matches 79..80 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g9 matches 1.. run function jk_uno:play/table/card/draw/get/g/9
execute if score #draw jk_uno.int matches 81..82 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g10 matches 1.. run function jk_uno:play/table/card/draw/get/g/10
execute if score #draw jk_uno.int matches 83..84 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g11 matches 1.. run function jk_uno:play/table/card/draw/get/g/11
execute if score #draw jk_uno.int matches 85..86 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_g12 matches 1.. run function jk_uno:play/table/card/draw/get/g/12

execute if score #draw jk_uno.int matches 87..88 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y0 matches 1.. run function jk_uno:play/table/card/draw/get/y/0
execute if score #draw jk_uno.int matches 89..90 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y1 matches 1.. run function jk_uno:play/table/card/draw/get/y/1
execute if score #draw jk_uno.int matches 91..92 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y2 matches 1.. run function jk_uno:play/table/card/draw/get/y/2
execute if score #draw jk_uno.int matches 93..94 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y3 matches 1.. run function jk_uno:play/table/card/draw/get/y/3
execute if score #draw jk_uno.int matches 95..96 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y4 matches 1.. run function jk_uno:play/table/card/draw/get/y/4
execute if score #draw jk_uno.int matches 97..98 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y5 matches 1.. run function jk_uno:play/table/card/draw/get/y/5
execute if score #draw jk_uno.int matches 99..100 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y6 matches 1.. run function jk_uno:play/table/card/draw/get/y/6
execute if score #draw jk_uno.int matches 101..102 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y7 matches 1.. run function jk_uno:play/table/card/draw/get/y/7
execute if score #draw jk_uno.int matches 103..104 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y8 matches 1.. run function jk_uno:play/table/card/draw/get/y/8
execute if score #draw jk_uno.int matches 105..106 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y9 matches 1.. run function jk_uno:play/table/card/draw/get/y/9
execute if score #draw jk_uno.int matches 107..108 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y10 matches 1.. run function jk_uno:play/table/card/draw/get/y/10
execute if score #draw jk_uno.int matches 109..110 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y11 matches 1.. run function jk_uno:play/table/card/draw/get/y/11
execute if score #draw jk_uno.int matches 111..112 if score @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_y12 matches 1.. run function jk_uno:play/table/card/draw/get/y/12

# 未抓取成功
execute unless score #draw jk_uno.int matches 0 run function jk_uno:play/table/card/draw/global
scoreboard players set #draw jk_uno.int 0