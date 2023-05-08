schedule function jk_uno:init/ticks/sec1 1s replace
# 倒计时
scoreboard players remove @e[tag=jk_uno_table,scores={jk_uno.time=1..}] jk_uno.time 1
#scoreboard players remove @a[team=jk_uno_player,scores={jk_uno.time=1..}] jk_uno.time 1

# 记录人数
execute as @e[tag=jk_uno_table] at @s store result score @s jk_uno.player_num if entity @a[distance=..8,team=jk_uno_player]

# 玩家报名
execute as @a[team=!jk_uno_player] at @s run function jk_uno:play/player/join