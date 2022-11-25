.model small
.stack 100
.code
start:
    mov ax, 3000h
    mov bx, 2000h
    mov cx, 1000h
    mov dx, 4000h
    sub ax, cx
    sbb bx, dx
end start