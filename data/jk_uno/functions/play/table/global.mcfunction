# 2t
# 执行实体为桌子标记
# 显示剩余卡牌数
data modify block ~ ~ ~4 Text4 set value '[{"text":"本局剩余卡牌数： ","color":"white","bold":true},{"score":{"name":"@e[tag=jk_uno_table,limit=1,sort=nearest]","objective":"jk_uno.remain"},"color":"green"}]'
data modify entity @e[limit=1,distance=..5,tag=jk_uno_table_cards] text set from block ~ ~ ~4 Text4

# 桌子附近非uno玩家加入游戏
tp @p[distance=..4,team=!jk_uno_player,gamemode=!spectator] ~ ~6.5 ~
title @a[team=!jk_uno_player,distance=..10,scores={jk_uno.join=1}] subtitle {"score":{"name":"@s[tag=!jk_uno_table_playing,scores={jk_uno.time=1..}]","objective": "jk_uno.time"},"color": "gold","bold": true}
execute store result score @s[tag=!jk_uno_table_playing] jk_uno.player_num if entity @a[distance=..10,team=!jk_uno_player,scores={jk_uno.join=1}]
tag @s[scores={jk_uno.player_num=..1}] remove jk_uno_table_wait
scoreboard players reset @s[tag=!jk_uno_table_wait] jk_uno.time
execute as @s[tag=!jk_uno_table_playing,tag=!jk_uno_table_wait,scores={jk_uno.player_num=2..}] run function jk_uno:init/set/order/wait
execute as @s[tag=!jk_uno_table_playing,tag=jk_uno_table_wait,scores={jk_uno.player_num=2..,jk_uno.time=0}] run function jk_uno:init/set/order/ready

# 更新桌面
execute as @s[tag=!jk_uno_table_refresh] run function jk_uno:play/table/refresh