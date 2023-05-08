summon minecraft:item_display ~ ~5 ~ {Tags:["test"],item:{id:"ladder",Count:1},billboard:"fixed",alignment:"fixed",Glowing:1b,interpolation_duration:40,transformation:{scale:[1f,1f,1f],translation:[0f,3f,0f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f]}}

data merge entity @e[limit=1,sort=nearest,tag=test] {transformation:{translation:[3f,0f,0f]}}

data merge entity @e[limit=1,sort=nearest,tag=test] {start_interpolation:0}

#{id:"paper",Count:1,tag:{CustomModelData:211421}}
#transformation:{translation:[0f,8f,0f],right_rotation:[0f,0.707f,0f,0.707f],left_rotation:[0f,0.707f,0f,0.707f]}