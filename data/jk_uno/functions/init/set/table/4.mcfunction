## 实体
summon marker ~ ~ ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_table","jk_uno_table_4"]}

# 展示的计分板（文本展示实体）
summon text_display ~ ~5 ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_table_cards"],text:'[{"text":"本局剩余卡牌数： ","color":"white","bold":true},{"text":"112","color":"green"}]',alignment:"horizontal",billboard:"center",alignment:"fixed",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

summon text_display ~ ~4.2 ~-4 {Tags:["jk_uno","jk_uno_npc","jk_uno_player_cards"],text:'{"text":"0","color":"aqua"}',alignment:"horizontal",billboard:"center",alignment:"fixed",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display ~ ~4.2 ~4 {Tags:["jk_uno","jk_uno_npc","jk_uno_player_cards"],text:'{"text":"0","color":"aqua"}',alignment:"horizontal",billboard:"center",alignment:"fixed",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display ~-4 ~4.2 ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_player_cards"],text:'{"text":"0","color":"aqua"}',alignment:"horizontal",billboard:"center",alignment:"fixed",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon text_display ~4 ~4.2 ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_player_cards"],text:'{"text":"0","color":"aqua"}',alignment:"horizontal",billboard:"center",alignment:"fixed",line_width:200,interpolation_duration:0,transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

# 椅子
summon armor_stand ~ ~2 ~-4 {Small:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,CustomName:'{"text": "UNO椅","color": "gold"}',Tags:["jk_uno","jk_uno_npc","jk_uno_chair","jk_uno_chair_north"]}
summon armor_stand ~ ~2 ~4 {Small:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,CustomName:'{"text": "UNO椅","color": "gold"}',Tags:["jk_uno","jk_uno_npc","jk_uno_chair","jk_uno_chair_south"]}
summon armor_stand ~-4 ~2 ~ {Small:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,CustomName:'{"text": "UNO椅","color": "gold"}',Tags:["jk_uno","jk_uno_npc","jk_uno_chair","jk_uno_chair_west"]}
summon armor_stand ~4 ~2 ~ {Small:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,CustomName:'{"text": "UNO椅","color": "gold"}',Tags:["jk_uno","jk_uno_npc","jk_uno_chair","jk_uno_chair_east"]}

# 可交互实体
summon interaction ~ ~2 ~4 {Tags:["jk_uno","jk_uno_npc","jk_uno_touch"],height:2f,width:1f}
summon interaction ~4 ~2 ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_touch"],height:2f,width:1f}
summon interaction ~ ~2 ~-4 {Tags:["jk_uno","jk_uno_npc","jk_uno_touch"],height:2f,width:1f}
summon interaction ~-4 ~2 ~ {Tags:["jk_uno","jk_uno_npc","jk_uno_touch"],height:2f,width:1f}

# 选颜色的展示实体
summon item_display ~-1.8 ~3.5 ~-0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_red"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-1.8 ~3.5 ~0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_blue"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-1.8 ~3 ~-0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_green"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-1.8 ~3 ~0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_yellow"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~1.8 ~3.5 ~0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_red"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~1.8 ~3.5 ~-0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_blue"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~1.8 ~3 ~0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_green"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~1.8 ~3 ~-0.25 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_yellow"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~0.25 ~3.5 ~-1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_red"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-0.25 ~3.5 ~-1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_blue"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~0.25 ~3 ~-1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_green"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-0.25 ~3 ~-1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_yellow"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-0.25 ~3.5 ~1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_red"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~0.25 ~3.5 ~1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_blue"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~-0.25 ~3 ~1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_green"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}
summon item_display ~0.25 ~3 ~1.8 {Tags:["jk_uno","jk_uno_npc","jk_uno_color","jk_uno_color_yellow"],item:{id:"air",Count:1},billboard:"fixed",alignment:"fixed",transformation:{scale:[0.3f,0.3f,0.3f],translation:[0f,0f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

## 方块
# 初始化桌面 11*11*7
fill ~-5 ~-1 ~-5 ~5 ~5 ~5 air
fill ~-5 ~-1 ~-5 ~5 ~5 ~5 barrier outline
setblock ~ ~ ~-4 oak_wall_sign[facing=north]
setblock ~ ~ ~4 oak_wall_sign[facing=south]
setblock ~-4 ~ ~ oak_wall_sign[facing=west]
setblock ~4 ~ ~ oak_wall_sign[facing=east]

summon item_display ~ ~1 ~ {Tags:["jk_uno","jk_uno_card"],item:{id:"paper",Count:1,tag:{CustomModelData:211431}},billboard:"vertical",alignment:"fixed",glow_color_override:1039587,Glowing:1b,interpolation_duration:100,transformation:{scale:[1f,1f,1f],translation:[-0.25f,0.6f,-0.3f],right_rotation:[1f,0f,0f,0f],left_rotation:[1f,0f,0f,0f]}}
scoreboard players set @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_table] jk_uno.color 0
scoreboard players set @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_table] jk_uno.card_type 9
scoreboard players set @e[limit=1,sort=nearest,distance=..2,tag=jk_uno_table] jk_uno.rotation 0

tp @a[distance=..8] ~ ~6 ~