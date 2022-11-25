title lab 6 act 3
.model small
.stack 32h
.code
start:
    
    mov cx, 7   ;initialize counter

    outer:
        push cx     ;push into stack
        mov dl, 31h ;hex code of 1
        inner:
            mov ah, 02h ;write to screen
            int 21h     ;call DOS
            inc dl
            loop inner  ;loop until counter is 0
        mov dl, 0ah  ;hex code of new line
        int 21h
        mov dl, 0dh  ;hex code of carriage return
        int 21h      ;call DOS
        pop cx       ;pop from stack
    loop outer   ;loop until counter is 0

end start