# 执行实体为桌子标记
tag @s remove jk_uno_table_refresh
execute as @s[tag=jk_uno_table_4] run function jk_uno:init/set/order/4
function jk_uno:play/table/card/draw/global