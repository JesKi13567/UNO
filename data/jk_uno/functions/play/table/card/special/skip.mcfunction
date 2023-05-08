# 执行实体为桌子标记
data merge entity @s[scores={jk_uno.color=0}] {CustomName:'{"text": "跳过！","color": "red"}'}
data merge entity @s[scores={jk_uno.color=1}] {CustomName:'{"text": "跳过！","color": "blue"}'}
data merge entity @s[scores={jk_uno.color=2}] {CustomName:'{"text": "跳过！","color": "green"}'}
data merge entity @s[scores={jk_uno.color=3}] {CustomName:'{"text": "跳过！","color": "yellow"}'}
tellraw @a[distance=..8,team=jk_uno_player] [{"selector":"@p[distance=..6,tag=jk_uno_player_turn]","bold": true},{"text": " >> ","color": "gray"},{"selector":"@s"}]
tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_skip