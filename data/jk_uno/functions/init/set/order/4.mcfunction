# 执行实体为桌子标记
# 分配玩家
tag @a[distance=..10,team=!jk_uno_player,scores={jk_uno.join=1},limit=4] add jk_uno_player_ready
execute as @a[tag=jk_uno_player_ready] run function jk_uno:init/set/order/reset

scoreboard players reset #distribute jk_uno.int
execute as @a[tag=jk_uno_player_ready] store result score @s jk_uno.order run scoreboard players add #distribute jk_uno.int 1

ride @p[tag=jk_uno_player_ready,scores={jk_uno.order=1}] mount @e[limit=1,tag=jk_uno_chair_east]
ride @p[tag=jk_uno_player_ready,scores={jk_uno.order=2}] mount @e[limit=1,tag=jk_uno_chair_south]
ride @p[tag=jk_uno_player_ready,scores={jk_uno.order=3}] mount @e[limit=1,tag=jk_uno_chair_west]
ride @p[tag=jk_uno_player_ready,scores={jk_uno.order=4}] mount @e[limit=1,tag=jk_uno_chair_north]

team join jk_uno_player @a[tag=jk_uno_player_ready]
execute as @s run function jk_uno:init/set/table/init
execute as @a[tag=jk_uno_player_ready] run function jk_uno:play/table/card/draw/7

tag @a[distance=..10] remove jk_uno_player_ready
kill @e[distance=..6,type=item,nbt={Item:{tag:{jk_uno:1}}}]