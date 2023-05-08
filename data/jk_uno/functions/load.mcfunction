# /reload加载数据包，第一次执行的页面
scoreboard objectives add jk_uno.int dummy "整型数字"
execute unless score #load jk_uno.int matches 1 run tellraw @a [{"text":"欢迎使用JK137のUNO数据包。  ","color":"green"},{"text":"[点我加载]","color":"aqua","clickEvent": {"action":"run_command","value":"/function jk_uno:init/first_load"}}]
execute if score #load jk_uno.int matches 1 run tellraw @a [{"text":"你已经加载过UNO数据包了！要卸载吗？  ","color":"green"},{"text":"[点我卸载]","color":"red","clickEvent": {"action":"run_command","value":"/function jk_uno:init/reset"}}]