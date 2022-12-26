TITLE LAB9 ACT3
.MODEL SMALL
.STACK 100H
.DATA
.CODE
   Nabeel PROC
    
    
    MOV BL,0H       ;MOV BL TO 0
    
    again:          ;LABEL

    MOV DL,1        ;MOVE 1 TO DL
    MOV AL,BL       ;MOV BL TO AL
    
    MUL DL          ;MULTIPLY DL BY AL
    AAM             ;ASCII ADJUST MULTIPLICATION
    OR  AX,3030H    ;AX=3030H
    MOV CX,AX
                    ;FUNCTION 2
    MOV AH,2
    MOV DL,CH       
    INT 21H         ;INTERRUPT
    MOV DL,CL   
    INT 21H         ;INTERRUPT
    
    MOV AH,2        ;FUNCTION 2
    MOV DL,0AH      ;NEW LINE
    INT 21H         ;INTERRUPT
    MOV DL,0DH      ;CARRAIGE RETURN
    INT 21H         ;INTERRUPT
    
    INC BL          ;INCREMENT BL
    CMP BL,100      ;COMPAIRING BL WITH 100
    JNE again       ;JUMP TO AGAIN IF NOT 0
    
    MOV AH,4CH      ;EXIT TO DOS
    INT 21H
    
   Nabeel ENDP
   END Nabeel
 