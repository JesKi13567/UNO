team remove jk_uno_player
execute as @e[tag=jk_uno] run tp @s ~ ~-300 ~
kill @e[tag=jk_uno]
clear @a paper{jk_uno:1}
function jk_uno:init/ticks/clear

scoreboard objectives remove jk_uno.int
scoreboard objectives remove jk_uno.join
scoreboard objectives remove jk_uno.food
scoreboard objectives remove jk_uno.hp

scoreboard objectives remove jk_uno.player_cards
scoreboard objectives remove jk_uno.player_num

scoreboard objectives remove jk_uno.time

scoreboard objectives remove jk_uno.order
scoreboard objectives remove jk_uno.rotation
scoreboard objectives remove jk_uno.card_draw
scoreboard objectives remove jk_uno.card_type
scoreboard objectives remove jk_uno.color
scoreboard objectives remove jk_uno.color1
scoreboard objectives remove jk_uno.remain

scoreboard objectives remove jk_uno_s0
scoreboard objectives remove jk_uno_s1

scoreboard objectives remove jk_uno_r0
scoreboard objectives remove jk_uno_r1
scoreboard objectives remove jk_uno_r2
scoreboard objectives remove jk_uno_r3
scoreboard objectives remove jk_uno_r4
scoreboard objectives remove jk_uno_r5
scoreboard objectives remove jk_uno_r6
scoreboard objectives remove jk_uno_r7
scoreboard objectives remove jk_uno_r8
scoreboard objectives remove jk_uno_r9
scoreboard objectives remove jk_uno_r10
scoreboard objectives remove jk_uno_r11
scoreboard objectives remove jk_uno_r12

scoreboard objectives remove jk_uno_b0
scoreboard objectives remove jk_uno_b1
scoreboard objectives remove jk_uno_b2
scoreboard objectives remove jk_uno_b3
scoreboard objectives remove jk_uno_b4
scoreboard objectives remove jk_uno_b5
scoreboard objectives remove jk_uno_b6
scoreboard objectives remove jk_uno_b7
scoreboard objectives remove jk_uno_b8
scoreboard objectives remove jk_uno_b9
scoreboard objectives remove jk_uno_b10
scoreboard objectives remove jk_uno_b11
scoreboard objectives remove jk_uno_b12

scoreboard objectives remove jk_uno_g0
scoreboard objectives remove jk_uno_g1
scoreboard objectives remove jk_uno_g2
scoreboard objectives remove jk_uno_g3
scoreboard objectives remove jk_uno_g4
scoreboard objectives remove jk_uno_g5
scoreboard objectives remove jk_uno_g6
scoreboard objectives remove jk_uno_g7
scoreboard objectives remove jk_uno_g8
scoreboard objectives remove jk_uno_g9
scoreboard objectives remove jk_uno_g10
scoreboard objectives remove jk_uno_g11
scoreboard objectives remove jk_uno_g12

scoreboard objectives remove jk_uno_y0
scoreboard objectives remove jk_uno_y1
scoreboard objectives remove jk_uno_y2
scoreboard objectives remove jk_uno_y3
scoreboard objectives remove jk_uno_y4
scoreboard objectives remove jk_uno_y5
scoreboard objectives remove jk_uno_y6
scoreboard objectives remove jk_uno_y7
scoreboard objectives remove jk_uno_y8
scoreboard objectives remove jk_uno_y9
scoreboard objectives remove jk_uno_y10
scoreboard objectives remove jk_uno_y11
scoreboard objectives remove jk_uno_y12