# 执行实体为桌子标记
scoreboard players add @s jk_uno.card_draw 2
function jk_uno:play/table/card/special/add_cards/show
tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_skip
tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_draw_2