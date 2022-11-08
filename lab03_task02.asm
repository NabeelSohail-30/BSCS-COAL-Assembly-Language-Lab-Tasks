TITLE Lab03 Task 02
mov [0200h], 1fh
mov [0201h], 45h
mov [0202h], 89h
mov [0203h], 4ch
mov [0204h], 2ah
mov [0205h], 58h
mov [0206h], 64h
mov [0207h], 37h

mov al, [0200h]
mov [0400h], al

mov al, [0201h]
mov [0401h], al

mov al, [0202h]
mov [0402h], al

mov al, [0203h]
mov [0403h], al

mov al, [0204h]
mov [0404h], al

mov al, [0205h]
mov [0405h], al

mov al, [0206h]
mov [0406h], al

mov al, [0207h]
mov [0407h], al

hlt
