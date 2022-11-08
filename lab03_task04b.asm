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
mov si, 0201h
mov di, 0401h

;swapping content of both address
mov al, [si]
mov cl, [di]
xchg al, cl
mov [si], al
mov [di], cl

mov al, [si+2]
mov cl, [di+2]
xchg al, cl
mov [si+2], al
mov [di+2], cl

mov al, [si+4]
mov cl, [di+4]
xchg al, cl
mov [si+4], al
mov [di+4], cl

mov al, [si+6]
mov cl, [di+6]
xchg al, cl
mov [si+6], al
mov [di+6], cl

hlt