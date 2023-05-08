# 执行实体为玩家之选择颜色/抓人中
execute anchored eyes as @s[tag=jk_uno_player_color] run summon marker ^ ^ ^ {Tags:["jk_uno","jk_uno_ray","jk_uno_ray_color","jk_uno_ray_new"]}
execute anchored eyes as @s[tag=jk_uno_player_god] run summon marker ^ ^ ^ {Tags:["jk_uno","jk_uno_ray","jk_uno_ray_god","jk_uno_ray_new"]}
execute anchored eyes as @s[tag=!jk_uno_player_color,tag=!jk_uno_player_god] run summon marker ^ ^ ^ {Tags:["jk_uno","jk_uno_ray","jk_uno_ray_catch","jk_uno_ray_new"]}

scoreboard players set @e[tag=jk_uno_ray_new,tag=!jk_uno_ray_catch] jk_uno.int 3
scoreboard players set @e[tag=jk_uno_ray_new,tag=jk_uno_ray_catch] jk_uno.int 8
data modify entity @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_ray_new] Rotation set from entity @s Rotation
tag @e[tag=jk_uno_ray_new] remove jk_uno_ray_new

execute as @s[tag=jk_uno_player_color] as @e[distance=..5,limit=4,sort=nearest,tag=jk_uno_color] at @s run function jk_uno:play/table/wool/color/show
execute as @s[tag=jk_uno_player_god] as @e[distance=..5,limit=4,sort=nearest,tag=jk_uno_color] at @s run function jk_uno:play/table/wool/god/show