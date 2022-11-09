title lab 05 activity 01
.model small
.stack 100h
.data
.code
main proc

    MOV CX, 10      ;INITIALIZE COUNTER
    
    AGAIN:
        MOV DL, 'N'     ;LOAD DL WITH 'N'
        MOV AH, 02h     ;DISPLAY CHARACTER
        INT 21h         ;CALL DOS
        
        ;ALTERNATE STATEMENT
        ;LOOP AGAIN      ;LOOP UNTIL COUNTER IS ZERO

        DEC CX
        JNZ AGAIN       ;LOOP UNTIL COUNTER IS ZERO

    MOV AH, 4Ch      ;TERMINATE PROGRAM
    INT 21h          ;CALL DOS

main endp
end main