schedule function jk_uno:init/ticks/tick2 2t replace
# 放置桌子
execute as @e[tag=jk_uno_table_set] at @s run function jk_uno:init/set/table/check

# 对所有uno玩家
execute as @a[team=jk_uno_player] at @s run function jk_uno:play/player/global

# 射线
execute as @e[tag=jk_uno_ray] at @s run function jk_uno:play/table/ray/tp

# 检测卡牌与桌子更新
execute as @e[tag=jk_uno_card] at @s run function jk_uno:play/table/card/throw
execute as @e[tag=jk_uno_table] at @s run function jk_uno:play/table/global

# 可交互实体
execute as @e[tag=jk_uno_touch,type=interaction] at @s run function jk_uno:play/table/interaction