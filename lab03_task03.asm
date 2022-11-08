title lab 02 task 03
;address mode used is
;indirect addressing mode
     
;move content to the offset address
mov [0200h], 1fh
mov [0201h], 45h
mov [0202h], 89h
mov [0203h], 4ch
mov [0204h], 2ah
mov [0205h], 58h
mov [0206h], 64h
mov [0207h], 37h
     
mov bx, 0200h   ;store offset in register
mov al, [bx]    ;mov content of offset stored in bx into al
mov bx, 0400h   ;store new offset in register
mov [bx], al    ;mov content of al on the offset in bx

mov bx, 0201h
mov al, [bx]
mov bx, 0401h
mov [bx], al

mov bx, 0202h
mov al, [bx]
mov bx, 0402h
mov [bx], al

mov bx, 0203h
mov al, [bx]
mov bx, 0403h
mov [bx], al

mov bx, 0204h
mov al, [bx]
mov bx, 0404h
mov [bx], al

mov bx, 0205h
mov al, [bx]
mov bx, 0405h
mov [bx], al

mov bx, 0206h
mov al, [bx]
mov bx, 0406h
mov [bx], al

mov bx, 0207h
mov al, [bx]
mov bx, 0407h
mov [bx], al

hlt