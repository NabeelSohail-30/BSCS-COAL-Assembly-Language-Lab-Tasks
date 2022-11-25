.model small
.stack 100
.code
start:
    mov ax, 1111h
    mov bx, 2323h
    mov cx, 3045h
    mov dx, 4241h
    add ax, cx
    adc bx, dx
end start