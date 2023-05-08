# 执行实体为桌子标记
execute as @s[scores={jk_uno.card_type=0..9}] run function jk_uno:play/table/card/special/number

scoreboard players reset @s[scores={jk_uno.card_type=10}] jk_uno.card_draw
execute as @s[scores={jk_uno.card_type=10}] run function jk_uno:play/table/card/special/add_cards/2

execute as @s[scores={jk_uno.card_type=11}] run function jk_uno:play/table/card/special/reverse
execute as @s[scores={jk_uno.card_type=12}] run function jk_uno:play/table/card/special/skip