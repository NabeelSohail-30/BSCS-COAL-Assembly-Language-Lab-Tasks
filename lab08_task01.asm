TITLE LAB 8 TASK 01
.MODEL SMALL
.STACK 100H
.DATA 
    NUMBERS DB 68H,87H,96H,45H,75H 
.CODE
   
Nabeel PROC
    
    MOV AX,@DATA          ;INITIALIZING DATA SEGMENT
    MOV DS,AX
    
    MOV CX,4              ;INITIALIZE CX TO 4
    MOV BX,OFFSET NUMBERS ;STORE OFFSET OF FIRST NUMBER IN ARRAY
    MOV AL,[BX]           ;STORE CONTENT OF BX TO AX
    
    LOOP_BACK:            ;LABEL
    
    CMP AL,[BX+1]         ;COMPARE AL WITH THE NEXT VALUE OF BX
    JC SWAP               ;JUMP TO LABEL SWAP
    
    SWAP_BACK:            ;LABEL
    
    INC BX                ;INCREMENTING BX
    LOOP LOOP_BACK        ;LOOP
    JMP EXIT              ;JUMP TO EXIT
    
    SWAP:                 ;LABEL SWAP
    MOV AL,[BX+1]         ;MOVING HIGHER VALUE AFTER COMPARING
    JMP SWAP_BACK         ;JUMP TO LABEL SWAP_BACK
    
    EXIT:                 ;LABEL
    MOV AH,2              ;PRINT THE HIGHER VALUE
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH            ;RETURN TO DOS
    INT 21H
    
Nabeel ENDP
END Nabeel