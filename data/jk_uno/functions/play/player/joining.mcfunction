title @s actionbar [{"text": "使用 ","color": "gold"},{"text": "/trigger jk_uno.join","color": "yellow"}," 加入UNO游戏！"]
title @s[scores={jk_uno.join=1}] actionbar [{"text": "成功报名UNO，正在等待更多玩家...","color": "green"}]
title @s[scores={jk_uno.join=1}] times 0s 2s 0s
title @s[scores={jk_uno.join=1}] title ""
scoreboard players reset @s[scores={jk_uno.join=2..}] jk_uno.join
scoreboard players reset @s[scores={jk_uno.join=..-1}] jk_uno.join