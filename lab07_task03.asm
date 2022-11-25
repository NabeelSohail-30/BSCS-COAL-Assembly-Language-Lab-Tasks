.model small
.stack 100
.code
start:
    mov bl, 5h
    mov cl, 10h
    mov al, cl
    mul bl
    mov dx, ax
end start