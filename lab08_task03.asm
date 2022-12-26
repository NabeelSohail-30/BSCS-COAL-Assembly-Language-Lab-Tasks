TITLE LAB8ACT3
.MODEL SMALL
.STACK 100H
.DATA
     TEMPERATURE DB 13,29,-10,-14,18,-9,12,-19,20,-5
.CODE

Nabeel PROC 
    
    MOV AX,@DATA               ;INITIALIZING DATA SEGMENT
    MOV DS,AX
    
    MOV SI,OFFSET TEMPERATURE ;MOVE FIRST VALUE IN SI
    MOV CX,9                   ;INITIALIZE CX TO 9
    MOV AL,[SI]                ;MOVE THE FIRST VALUE TO AL
    OUTERLOOP:                 ;LABEL
    INC SI                     ;INCREMENT SI
    CMP AL,[SI]                ;COMPARE CONTENTS OF AL AND SI
    JGE SEARCH                 ;JUMP TO SEARCH IF GREATER OR EQUAL TO
    MOV AL,[SI]                ;MOVE CONTENTS OF SI TO AL
    SEARCH:                    ;LABEL
    LOOP OUTERLOOP             ;LOOP
    
    ;NOW DISPLAYING THE HIGHEST TEMPERATURE 
    
    MOV DL,AL                  ;MOVE THE HIGHEST TEMPERATURE TO DL
    MOV AH,2                   ;PRINT
    INT 21H
    
    MOV AH,4CH                 ;RETURN TO DOS
    INT 21H   
    
Nabeel ENDP
END Nabeel