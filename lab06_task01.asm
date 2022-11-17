title lab 06 act 01
.model small
.stack 100h
.data
    msg db 'Computer Science', 0dh, 0ah, '$'
.code
start:
    mov ax,@data    ;initialize data segment
    mov ds,ax

    mov cx, 10

    @LOOP:
        mov ah,09h      ;display msg
        lea dx,msg
        int 21h
    loop @LOOP

    mov ah,4ch  ;exit to dos
    int 21h
end start