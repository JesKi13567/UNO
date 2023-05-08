function jk_uno:play/table/card/draw/global
function jk_uno:play/table/card/draw/global
tag @s remove jk_uno_player_draw_2
tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@s","bold": true},{"text": " >> ","color": "gray"},{"text": "我被 +2 了！","color": "white"}]