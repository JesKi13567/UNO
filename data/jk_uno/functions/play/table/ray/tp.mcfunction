# 执行实体为射线
tp @s[scores={jk_uno.int=1..}] ^ ^ ^1

execute as @s[tag=!jk_uno_ray_catch] if entity @e[distance=..6,sort=nearest,limit=2,tag=jk_uno_color] as @e[distance=..1,sort=nearest,tag=jk_uno_color] run data merge entity @s {Glowing:0b}
execute as @s[tag=!jk_uno_ray_catch] run data merge entity @e[distance=...6,sort=nearest,limit=1,tag=jk_uno_color] {Glowing:1b}

execute as @s[tag=jk_uno_ray_catch] run tag @p[distance=..2,tag=jk_uno_player_uno_catch] add jk_uno_player_uno_catched

scoreboard players remove @s jk_uno.int 1
kill @s[scores={jk_uno.int=..0}]
#particle end_rod
#execute if block ~ ~ ~ barrier run kill @s[tag=!jk_uno_ray_catch]