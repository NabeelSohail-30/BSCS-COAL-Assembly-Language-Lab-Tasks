TITLE LAB 9 ACTIVITY 1       ;TITLE DIRECTIVE 
.MODEL SMALL                 ;RESERVED 64 KB
.STACK 100H                  ;RESERVED 256 BYTES
.DATA                        ;DATA SEGMENT
INPUT DB 'ENTER FOUR DIGIT NUMBER $'
DIG1 DB ?
DIG2 DB ?
DIG3 DB ?
DIG4 DB ?

.CODE                       ;CODE SEGMENT
Main PROC  
    MOV AX,@DATA            ;INITIATE DATA SEGMENT
    MOV DS,AX
    
    MOV BX,0H               ;SET BX TO 0 
    
    MOV DX,OFFSET INPUT     ;PRINT STRING
    MOV AH,9                ;FUNCTION 9
    INT 21H                 ;INTERRUPT
    
    MOV AH,1                ;INPUT NUMBER
    INT 21H                 ;INTERRUPT
    MOV DIG1,AL             ;STORE 1ST NUMBER IN DIG1
    
    MOV AH,1                ;INPUT NUMBER
    INT 21H                 ;INTERRUPT
    MOV DIG2,AL             ;STORE 2ND NUMBER IN DIG2
    
    MOV AH,1                ;INPUT NUMBER
    INT 21H                 ;INTERRUPT
    MOV DIG3,AL             ;STORE 3RD NUMBER IN DIG3
    
    MOV AH,1                ;INPUT NUMBER
    INT 21H                 ;INTERRUPT
    MOV DIG4,AL             ;STORE 4TH NUMBER IN DIG4
    
    MOV AL,DIG1             ;STORE 1ST NUMBER IN AL
    MOV CX,4                ;SET CX TO 4
    SBACK1:                 ;LOOP LABEL
    ROR AL,1                ;APPLY ROR INSTRUCTION IN AL
    JC COUNT1               ;JUMP IF CARRY
    LBACK1:                 ;JUMP LABEL
    LOOP SBACK1             ;END OF LOOP
    JMP NEXT1               ;JUMP TO NEXT
    COUNT1:                 ;JUMP LABEL
    INC BX                  ;INCREMENT IN BX
    JMP LBACK1              ;JUMP LABEL
    
      
    NEXT1:                  ;JUMP LABEL
    MOV AL,DIG2
               ;STORE 2ND NUMBER IN AL
    MOV CX,4                ;SET CX TO 4
    SBACK2:                 ;LOOP LABE2
    ROR AL,1                ;APPLY ROR INSTRUCTION IN AL
    JC COUNT2               ;JUMP IF CARRY
    LBACK2:                 ;JUMP LABEL
    LOOP SBACK2             ;END OF LOOP
    JMP NEXT2:              ;JUMP TO NEXT
    COUNT2:                 ;JUMP LABEL
    INC BX                  ;INCREMENT IN BX
    JMP LBACK2              ;JUMP LABEL
    
    NEXT2:                  ;JUMP LABEL
    MOV AL,DIG3             ;STORE 3RD NUMBER IN AL
    MOV CX,4                ;SET CX TO 4
    SBACK3:                 ;LOOP LABE3
    ROR AL,1                ;APPLY ROR INSTRUCTION IN AL
    JC COUNT3               ;JUMP IF CARRY
    LBACK3:                 ;JUMP LABEL
    LOOP SBACK3             ;END OF LOOP
    JMP NEXT3               ;JUMP TO NEXT
    COUNT3:                 ;INCREMENT IN BX
    INC BX                  ;JUMP LABEL
    JMP LBACK3
    
    NEXT3:                  ;JUMP LABEL
    MOV AL,DIG4             ;STORE 4TH NUMBER IN AL
    MOV CX,4                ;SET CX TO 4
    SBACK4:                 ;LOOP LABE4
    ROR AL,1                ;APPLY ROR INSTRUCTION IN AL
    JC COUNT4               ;JUMP IF CARRY
    LBACK4:                 ;JUMP LABEL
    LOOP SBACK4             ;END OF LOOP
    JMP GO                  ;JUMP TO GO
    COUNT4:                 ;JUMP LABEL
    INC BX                  ;INCREMENT IN BX
    JMP LBACK4              ;JUMP LABEL
    
    ;CONVERTING INTO UNPACKED BCD
    GO:                     ;JUMP LABEL
    MOV AL,BL               ;MOV BL CONTENT TO AL
    MOV DL,01               ;MOV DL TO 01
    MUL DL                  ;MULTIPLY DL AND AL 
    AAM                     ;ASCII ADJUST FOR MULTIPLICATION
    OR AX,3030H             ;AX=3030H
    MOV BX,AX               ;MOV AX CONTENT TO BX
    
    ;DISPLAY BCD VALUES
    MOV AH,2                ;FUNCTION 2
    MOV DL,0DH              ;CARREGE RETURN
    INT 21H                 ;INTERRUPT
    MOV DL,0AH              ;NEWLINE
    INT 21H                 ;INTERRUPT
    
    MOV AH,2                ;FUNCTION 2
    MOV DL,BH               ;MOV BH CONTENT TO DL
    INT 21H                 ;INTERRUPT
    
    MOV AH,2                ;FUNCTION 2
    MOV DL,BL               ;MOV BL CONTENT TO DL
    INT 21H                 ;INTERRUPT
    
    MOV AH,4CH              ;EXIT TO DOS
    INT 21H                 ;INTERRUPT
    

   Main ENDP
END Main
