TITLE LAB9 ACT4
.MODEL SMALL
.STACK 100H
.DATA
    FIRSTNAME DB 'ENTER FIRST NAME IN LOWER CASE : $'
    INPUTNAME DB 10,?,10 DUP (?)
    UPPERCASE DB 8 DUP ('$')
    DISPLAY DB 'YOUR FIRST NAME IS : $'
.CODE
Nabeel proc
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9            ;FUNCTION 9
    LEA DX,FIRSTNAME    ;PRINT STRING
    INT 21H
    
    MOV AH,0AH          ;FUNCTION 0AH
    LEA DX,INPUTNAME    ;STORE INPUT IN CHAR
    INT 21H
    
    LEA SI, INPUTNAME   ;STORE INPUT IN CHAR
    LEA BX,UPPERCASE    ;STORE INPUT IN CHAR
    
    MOV CX,7            ;INITIALIZE CX TO 7
    
    loopAgain:             ;LABEL
    
    MOV AL,[SI]+2       ;MOVE CONTENTS OF 3RD ADDRESS TO AL
    CMP AL,61H          ;COMPAIRE
    JB step             ;JUMP IF BELOW
    CMP AL,7AH          ;COMPAIRE
    JA step             ;JUMP IF ABOVE
    AND AL,11011111B    ;ANDING AL 
    step:               ;LABEL
    MOV [BX],AL         ;MOVE CONTENTS OF AL TO OFFSET ADDRESS BX
    INC SI              ;INCREMENTING SI
    INC BX              ;INCREMENTING BX
    LOOP loopAgain         ;LOOP
    
    MOV AH,2            ;FUNCTION 2
    MOV DL,0AH          ;NEW LINE 
    INT 21H             ;INTERRUPT
    MOV DL,0DH          ;CARRAIGE RETURN
    INT 21H             ;INTERRUPT
    
    MOV AH,9            ;PRINT STRING
    LEA DX,DISPLAY
    INT 21H             
    
    MOV AH,9            ;PRINT STRING IN UPPER CASE
    LEA DX,UPPERCASE
    INT 21H
    MOV AH,4CH          ;RETURN TO DOS
    INT 21H
Nabeel ENDP
END Nabeel