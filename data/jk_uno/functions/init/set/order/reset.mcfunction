# 重置玩家信息
ride @s dismount
tp @s ~ ~6.5 ~
clear @s paper{jk_uno:1}
team leave @s
scoreboard players reset @s jk_uno.order
tag @s remove jk_uno_player_init
tag @s remove jk_uno_player_turn
tag @s remove jk_uno_player_color
tag @s remove jk_uno_player_skip
tag @s remove jk_uno_player_draw_can
tag @s remove jk_uno_player_draw_2
tag @s remove jk_uno_player_draw_4
tag @s remove jk_uno_player_draw_6
tag @s remove jk_uno_player_uno_can
tag @s remove jk_uno_player_uno_said
tag @s remove jk_uno_player_uno_catch
tag @s remove jk_uno_player_uno_catched