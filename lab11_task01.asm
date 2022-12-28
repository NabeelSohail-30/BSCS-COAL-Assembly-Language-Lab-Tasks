TITLE LAB11ACT1

.MODEL SMALL
.STACK 100H
.DATA 

PRINT DB 'ENTER STRING: $'
COUNT DB 0DH, 0AH, 'COUNT OF STRING: $'
 
.CODE                           ;CODE SEGMENT
  Nabeel PROC
    MOV AX, @DATA               ;INITIALIZE DATA SEGMENT
    MOV DS,AX
    
    MOV BX, 0                   ;BX=0 FOR COUNT
    LEA DX, PRINT               ;PRINT STRINT
    MOV AH, 9                   ;FUNCTION 9
    INT 21H                     ;INTERRUPT
    
    LOOP1:                         ;JUMP LABEL
    MOV AH, 1                   ;INPUT CHAR
    INT 21H                     ;INTERRUPT
    CMP AL, 13                  ;COMPARE WITH ENTER
    JE JUMP                     ;JUMP IF EQUAL
    MOV [SI], AL                ;STORE AL CONTENT TO THE ADDRESS OF SI
    INC SI                      ;INCREMENT SI
    INC BX                      ;INCREMENT BX
    JMP LOOP1                      ;UNCONDITIONAL JUMP
    
    JUMP:                       ;JUMP LABEL
    LEA DX, COUNT               ;PRINT COUNT
    MOV AH, 9                   ;FUNCTION 9
    INT 21H                     ;INTERRUPTION
    
    MOV AX, BX                  ;STORE BL CONTENTS TO AL
    AAM                         ;ASCII ADJUST For MULTIPLICATIONS
    OR AX, 3030H                ;APPLY OR OPPERATION ON AX
    MOV BX, AX                  ;STORE AX CONTENT TO BX
    
    MOV AH, 2                   ;FUNCTION 2
    MOV DL, BH                  ;STORE HIGHER BYTE ON BH
    INT 21H                     ;INTERRUPT
    MOV DL, BL                  ;STORE LOWER BYTE IN BL
    INT 21H                     ;INTERRUPT
    
    MOV AH, 4CH                 ;EXIT TO DOS
    INT 21H                     ;INTERRUPT
     
    Nabeel ENDP
END Nabeel