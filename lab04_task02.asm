title lab 04 activity 02
.model small
.stack 100h
.data
    msg db "Enter your first name: $"
    fname db 100 dup('$')
    msg2 db "Your First Name is - $"
    NEW_LINE   DB 0AH, 0DH, "$"        ;for new line
.code
main proc
    mov ax, @data   ;initialize data segment
    mov ds, ax         

    mov ah, 09h     ;display string
    lea dx, msg     ;assign base offset of msg into dx
    int 21h

    mov ah, 0ah     ;read string
    lea dx, fname   ;assign base offset of fname into dx
    int 21h

    mov ah, 09h         ;display string
    lea dx, NEW_LINE    ;line feed plus carraige return
    int 21h

    mov ah, 09h     ;display string
    lea dx, msg2    ;assign base offset of msg2 into dx
    int 21h

    MOV BX, OFFSET fname+2     ;TAKE BASE LOCATION OF FNAME IN BX
        
    AGAIN:
        MOV DL, [BX]        ;GET FIRST CHARACTER INTO DL
        MOV AH, 2           ;DISPLAY CHARACTER     
        INT 21H            
        
        INC BX              ;INCREMENT BX TO GET THE LOCATION OF NEXT CHARACTER        
        
        CMP [BX], '$'       ;IF CHARACTER IS '$'
        JZ  EXIT            ;JUMP TO LABEL EXIT IF ZERO FLAG IS 1 (IF [BX] = '$')      
        
        LOOP AGAIN
    
    EXIT:
        mov ah, 4ch     ;terminate the program, send control to OS
        int 21h
main endp
end main