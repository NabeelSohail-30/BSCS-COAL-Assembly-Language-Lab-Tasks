title lab 04 activity 01
.model small
.stack 100h
.data
    msg db "Nabeel Sohail, is the student of CS and IT department$"
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
    MOV DX, 0300h   ;row 0, col 0
    INT 10h         

    mov ah, 09h     ;display string
    lea dx, msg     ;assign base offset of msg into dx
    int 21h
    
    mov ah, 4ch     ;terminate the program, send control to OS
    int 21h
main endp
end main