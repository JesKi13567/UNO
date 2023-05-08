i = 0
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
    print('function jk_uno:play/table/card/draw/get/'+ c + '/' + str(j))
    i += 1