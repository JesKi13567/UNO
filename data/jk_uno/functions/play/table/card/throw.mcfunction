# 2t
# 检测玩家丢出的牌
execute as @p[distance=..6,tag=jk_uno_player_turn] at @s as @e[limit=1,distance=..2,type=item,nbt={Item:{"id":"minecraft:paper",Count:1b,tag:{jk_uno:1}}}] if data entity @s Thrower run tag @s add jk_uno_card_throw
execute as @e[limit=1,distance=..6,tag=jk_uno_card_throw] at @s run function jk_uno:play/table/card/check

# 将成功的牌改为展示实体
data modify entity @s item set from entity @e[limit=1,distance=..6,tag=jk_uno_card_ready] Item
kill @e[distance=..6,tag=jk_uno_card_ready]

# 防止乱丢牌
execute as @e[distance=..8,type=item,nbt={Item:{tag:{jk_uno:1}}}] run data merge entity @s {PickupDelay:0}