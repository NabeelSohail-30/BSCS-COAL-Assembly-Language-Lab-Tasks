title lab 06 act 04
.model small
.stack 100h
.data
.code
start:
    mov ax,@data    ;initialize data segment
    mov ds,ax

    mov cx, 5      ;set counter
    mov ah,02h      ;set output function
    mov dl, 31h       ;set output character

    @LOOP:
        int 21h
        inc dl
        push dx

        mov dl,08h      ;backspace
        int 21h
        mov bx, 80h

        @hold:
            nop
            dec bx
            jnz @hold
        
        pop dx
    loop @LOOP

    mov ah,4ch  ;exit to dos
    int 21h
end start