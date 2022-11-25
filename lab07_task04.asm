.model small
.stack 100
.code
start:
    mov bl, 5h
    mov cl, 10h
    mov ah, 0h
    mov al, cl
    div bl
    mov dx, ax
end start