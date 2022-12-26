TITLE LAB8ACT4
.MODEL SMALL
.STACK 100H
.DATA 
     MYNAME DB 'nabeel$'
.CODE

Nabeel PROC
    MOV AX,@DATA         ;INITIALIZING DATA SEGMENT
    MOV DS,AX
    
    MOV SI,OFFSET MYNAME 
    MOV CX,6             ;INITIALIZE CX TO 6
    
    LOOP1:               ;LABEL
    MOV DL,[SI]          ;MOVE THE CONTENTS OF SI TO DL
    SUB DL,20H           ;SUBTRACT 20 IN DL TO CONVERT IT INTO UPPER CASE
    MOV AH,2             ;FUNCTION 2
    INT 21H              ;PRINT
    INC SI               ;INCREMENT SI
    LOOP LOOP1           ;LOOP
    
    MOV AH,4CH           ;RETURN TO DOS
    INT 21H 
    
Nabeel ENDP 
END Nabeel
         