# 执行实体为桌子标记
scoreboard players add @s jk_uno.rotation 1
data merge entity @s[scores={jk_uno.color=0}] {CustomName:'{"text": "反转！","color": "red"}'}
data merge entity @s[scores={jk_uno.color=1}] {CustomName:'{"text": "反转！","color": "blue"}'}
data merge entity @s[scores={jk_uno.color=2}] {CustomName:'{"text": "反转！","color": "green"}'}
data merge entity @s[scores={jk_uno.color=3}] {CustomName:'{"text": "反转！","color": "yellow"}'}
tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@p[distance=..6,tag=jk_uno_player_turn]","bold": true},{"text": " >> ","color": "gray"},{"selector":"@s"}]

# 改变顺序
tag @p[distance=..6,tag=jk_uno_player_turn] add jk_uno_player_reverse_
execute as @s[scores={jk_uno.player_num=3..}] run function jk_uno:play/table/card/special/reverse_real
execute as @s[scores={jk_uno.player_num=2}] run tag @p[distance=..6,team=jk_uno_player,tag=!jk_uno_player_turn] add jk_uno_player_skip
tag @a[distance=..6,team=jk_uno_player] remove jk_uno_player_reverse_