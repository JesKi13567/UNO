# 执行实体为桌子标记
execute as @s[scores={jk_uno.player_num=3}] run tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=3}] add jk_uno_player_reverse_2
execute as @s[scores={jk_uno.player_num=3}] run tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_reverse_3

execute as @s[scores={jk_uno.player_num=4}] run tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=4}] add jk_uno_player_reverse_2
execute as @s[scores={jk_uno.player_num=4}] run tag @p[distance=..6,team=jk_uno_player,scores={jk_uno.order=2}] add jk_uno_player_reverse_4

scoreboard players set @a[distance=..6,tag=jk_uno_player_reverse_2] jk_uno.order 2
scoreboard players set @a[distance=..6,tag=jk_uno_player_reverse_3] jk_uno.order 3
scoreboard players set @a[distance=..6,tag=jk_uno_player_reverse_4] jk_uno.order 4

tag @a[distance=..6] remove jk_uno_player_reverse_2
tag @a[distance=..6] remove jk_uno_player_reverse_3
tag @a[distance=..6] remove jk_uno_player_reverse_4