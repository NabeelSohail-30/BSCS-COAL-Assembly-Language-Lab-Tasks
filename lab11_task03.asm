title lab 11 act 3
.model small
.stack 100h
.data
    table dw 20, 25, 32, 41, 52, 65, 80, 97, 116, 137 ; values of y for x = 0, 1, ..., 9
    newline db 0dh, 0ah, '$'
.code
main proc
    mov ax, data ; set up the data segment
    mov ds, ax

    mov al, 0 ; initialize x to 0
    xlat ; retrieve the value of y from the look-up table and store it in AL
                                                                      
    mov dl, al ; store the value of y
    mov ah, 02h
    int 21h
    
    mov ah, 09h
    lea dx, newline
    int 21h 

    ; Increment x and retrieve the corresponding value of y from the look-up table
    ; repeat this loop 9 times to retrieve the values of y for x = 1, 2, ..., 9
    mov cx, 9
    loop_start:
        inc al
        xlat
        mov dl, al ; store the value of y
        mov ah, 02h
        int 21h
        
        mov ah, 09h
        lea dx, newline
        int 21h
    loop loop_start

    ; End the program
    mov ax, 4c00h
    int 21h
main endp
end main