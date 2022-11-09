title lab 04 activity 04
.model small
.stack 100h
.data
    msg1 db '12345$'
    msg2 db '234$'
    msg4 db '432$'
    msg5 db '54321$'
.code
main proc
    mov ax, @data   ;initialize data segment
    mov ds, ax         

    ;CLEAR SCREEN 
    MOV AH, 6           ;SCROLL UP THE SCREEN

    ;SCREEN DIMENSION (TOP LEFT COORDINATES IN CX AND BOTTOM RIGHT COORDINATES IN DX
    MOV CH, 0       ;ROW OF TOP LEFT COORDINATES        
    MOV CL, 0       ;COLUMN OF TOP LEFT COORDINATES
    MOV DH, 4fh      ;ROW OF BOTTOM RIGHT COORDINATES
    MOV DL, 18h      ;COLUMN OF BOTTOM RIGHT COORDINATES
    
    ;NORMAL SCREEN ATTRIBUTE (FOREGROUND WHITE AND BACKGROUND BLACK)
    MOV BH, 7
    INT 10H       

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0a25h
    INT 10h

    ;PRINTING THE MESSAGE
    LEA DX, msg1
    MOV AH, 9
    INT 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0b26h
    INT 10h

    ;PRINTING THE MESSAGE
    LEA DX, msg2
    MOV AH, 9
    INT 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0c27h
    INT 10h

    ;PRINTING THE MESSAGE
    MOV DL, '3'
    MOV AH, 2
    INT 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0d26h
    INT 10h

    ;PRINTING THE MESSAGE
    LEA DX, msg4
    MOV AH, 9
    INT 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0e25h
    INT 10h

    ;PRINTING THE MESSAGE
    LEA DX, msg5
    MOV AH, 9
    INT 21h
    
    MOV ah, 4ch     ;terminate the program, send control to OS
    INT 21h
main endp
end main