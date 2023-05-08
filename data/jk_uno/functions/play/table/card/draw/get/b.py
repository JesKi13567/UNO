import os
import shutil

file_path = 'D:\\4MC\\.minecraft\\saves\\空\\datapacks\\jk_uno_dp\\data\\jk_uno\\functions\\play\\table\\card\\draw\\get\\'
i = 0
j = 0
while i < 52:
    if i < 13:
        c = 'r'
    elif i < 26:
        c = 'b'
    elif i < 39:
        c = 'g'
    else:
        c = 'y'
    j = i % 13
    file_name = file_path + c + '\\' + str(j) + '.mcfunction'
    if not os.path.exists(file_name):
        os.makedirs(os.path.dirname(file_name), exist_ok=True)
        with open(file_name, mode='w', encoding='utf-8') as f:
            f.write('give @s paper{CustomModelData:'+ str(i + 211422) +',jk_uno:1}' + '\n' + 'scoreboard players remove @e[limit=1,distance=..6,tag=jk_uno_table] jk_uno_'+ c + str(j) +' 1' + '\n' + 'scoreboard players set #draw jk_uno.int 0')
            f.close()
    i += 1