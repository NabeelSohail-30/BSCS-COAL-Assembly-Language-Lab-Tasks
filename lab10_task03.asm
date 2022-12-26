title lab 10 act 3

.model small
.stack 100h
.data
    inp1 db "Enter Number 01: $"
    inp2 db "Enter Number 01: $"
    num1 db ?
    num2 db ?
    res db ?
    addHead db "Addition $"
    subHead db "Subtraction $"
    mulHead db "Multiplication $"
    divHead db "Division $"
.code
main proc
    ;intialize data segment
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 4ch     ;exit to dos function
    int 21h    
main endp

inpnmbr proc
    mov ah, 09h
    lea dx, inp1
    int 21h
    mov ah, 0ah
    int 21h
    mov num1, al
    mov ah, 09h
    lea dx, inp2
    int 21h
    mov ah, 0ah
    int 21h
    mov num2, al
    ret
inpnmbr endp
end main