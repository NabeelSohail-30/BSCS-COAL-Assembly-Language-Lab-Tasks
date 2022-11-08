Title Lab 03 Task 04a
;address mode: based relative
;move content onto offset
mov [0201h], 8fh
mov [0203h], 5ch
mov [0205h], 2bh
mov [0207h], 1ah
mov [0401h], 8dh
mov [0403h], 5eh
mov [0405h], 9ah
mov [0407h], 5ch
             
;store the base address of both address block
mov bx, 0201h
mov bp, 0401h

;swaping content of both offset
mov al, [bx]
mov cl, [bp]
xchg al, cl
mov [bx], al
mov [bp], cl

mov al, [bx+2]
mov cl, [bp+2]
xchg al, cl
mov [bx+2], al
mov [bp+2], cl

mov al, [bx+4]
mov cl, [bp+4]
xchg al, cl
mov [bx+4], al
mov [bp+4], cl

mov al, [bx+6]
mov cl, [bp+6]
xchg al, cl
mov [bx+6], al
mov [bp+6], cl

hlt