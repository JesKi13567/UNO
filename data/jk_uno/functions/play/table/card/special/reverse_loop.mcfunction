# 执行实体为桌子标记
## 本函数出现死循环，暂无解决方案
# 颠倒顺序，因为方向改变了
scoreboard players operation #reverse_max jk_uno.int > @a[distance=..6,team=jk_uno_player,tag=!jk_uno_player_reverse_] jk_uno.order
scoreboard players operation #reverse_min jk_uno.int < @a[distance=..6,team=jk_uno_player,tag=!jk_uno_player_reverse_] jk_uno.order

execute as @a[distance=..6,team=jk_uno_player] if score @s jk_uno.order = #reverse_max jk_uno.int run tag @s add jk_uno_player_reverse_max
execute as @a[distance=..6,team=jk_uno_player] if score @s jk_uno.order = #reverse_min jk_uno.int run tag @s add jk_uno_player_reverse_min

tag @p[distance=..6,tag=jk_uno_player_reverse_max] add jk_uno_player_reverse_
tag @p[distance=..6,tag=jk_uno_player_reverse_min] add jk_uno_player_reverse_

scoreboard players operation @p[distance=..6,tag=jk_uno_player_reverse_max] jk_uno.order = #reverse_min jk_uno.int
scoreboard players operation @p[distance=..6,tag=jk_uno_player_reverse_min] jk_uno.order = #reverse_max jk_uno.int

tag @a[distance=..6,tag=jk_uno_player_reverse_] remove jk_uno_player_reverse_max
tag @a[distance=..6,tag=jk_uno_player_reverse_] remove jk_uno_player_reverse_min

# 循环此函数
execute if entity @a[distance=..6,tag=!jk_uno_player_reverse_] run function jk_uno:play/table/card/special/reverse_loop