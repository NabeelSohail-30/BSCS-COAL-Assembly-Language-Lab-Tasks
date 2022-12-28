include mymacro.mac
.model small
.stack 100h
.data
    message1 db 'Total wages for employee 1: $', 0
    message2 db 'Total wages for employee 2: $', 0
    message3 db 'Total wages for employee 3: $', 0
    total1 dw ?
    total2 dw ?
    total3 dw ?
.code
main proc
    mov ax, @data
    mov ds, ax

    TOTAL_WAGES 60000, 2500, 3000
    mov total1, ax

    TOTAL_WAGES 45000, 1000, 500
    mov total2, ax

    TOTAL_WAGES 10000, 500, 100
    mov total3, ax

    ; Output total wages for each employee
    mov ah, 09h
    mov dx, offset message1
    int 21h
    mov bx, total1
    mov ah, 02h
    mov dl, bh
    int 21h
    mov dl, bl
    int 21h
    crlf
    mov ah, 09h
    mov dx, offset message2
    int 21h
    mov bx, total2
    mov ah, 02h
    mov dl, bh
    int 21h
    mov dl, bl
    int 21h
    crlf
    mov ah, 09h
    mov dx, offset message3
    int 21h
    mov bx, total3
    mov ah, 02h
    mov dl, bh
    int 21h
    mov dl, bl
    int 21h

    exitToDos
main endp
end main