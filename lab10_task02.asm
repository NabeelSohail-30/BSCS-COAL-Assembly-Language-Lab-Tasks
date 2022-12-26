TITLE LAB 10 ACT 2
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'ENTER ANY SINGLE DIGIT NUMBER TO PRINT ITS TABLE: $'  
DIG DB ?
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
   
    ;CALL CLRSCR             ;call clrscr procedure
    ;CALL SETCRSR            ;call stcrsr procedure
    CALL DISPTBL            ;call disptbl procedure 
   
    MOV AH,4CH              ;RETURN TO DOS
    INT 21H                 ;INTERRUPT    
    
MAIN ENDP 

CLRSCR PROC 

    MOV AX,0600H            ;SCROLL ENTIRE SCREEN
    MOV BX,07               ;NORMAL ATTRIBUTE
    MOV CX,0000             ;START AT 00,00
    MOV DX,184FH
    INT 10H                 ;INVOKE INTERRUPT
    RET                     ;RETURN TO MAIN

CLRSCR ENDP

SETCRSR PROC
           
    MOV AH,02               ;SET CURSOR OPTION
    MOV BH,00               ;PAGE 0
    MOV DL,00               ;ROW OPTION   
    MOV DH,03
    INT 10H                 ;INVOKE INTERRUPT     
    RET                     ;RETURN TO MAIN
           
SETCRSR ENDP

DISPTBL PROC    
    
    MOV AX, 00              ;AX=0
    MOV BX, 00              ;BX=0
    MOV CX, 00              ;CX=0
    MOV DX, 00              ;DX=0
    
    MOV AH,9                ;FUNCTION 9
    LEA DX, MSG1            ;PRINT MSG1
    INT 21H                 ;INTERRUPT
    
    MOV AH,1                ;TAKING INPUT
    INT 21H                 ;INTERRUPT
    AND AL,0FH              ;APPLY AND OPERATION IN AL
    MOV DIG,AL              ;STORE AL IN DIG
    
    MOV CX,10               ;INITIALIZE LOOP
    MOV DH,1
    
    AGAIN:                  ;LOOP START
    MOV AH,2H               ;FUNCTION 2
    MOV DL,0AH              ;LINFIELD
    INT 21H
    MOV DL,0DH              ;CARRIAGE RETURN
    INT 21H
    
    MOV AL,DIG              ;MOVE FIG IN AL
    OR AL,30H               ;OR AL WITH 30H
    
    MOV AH,2                ;FUNCTION 2
    MOV DL,AL               ;PRINT AL
    INT 21H
    
    MOV DL,'x'              ;PRINT *
    INT 21H
        
    MOV AL,DH               ;MOVE DH TO AL
    AAM                     ;ASCII ADJUST AFTER MULTIPLICATION
    OR AX,3030H             ;OR AX WITH 3030H
    MOV BX,AX               ;MOVE AX TO BX
    MOV AH,2                ;FUNCTION 2
    MOV DL,BH               ;PRINT BH
    INT 21H
    MOV DL,BL               ;PRINT BL
    INT 21H
    
    MOV DL, '='             ;PRINT =
    INT 21H
    
    MOV AL,DIG              ;DIG TO AL
    MUL DH                  ;MULTIPLY DH WITH AL
    AAM                     ;ASCII ADJUST AFTER MULTIPLICATION
    OR AX,3030H             ;OR AX WITH 3030H
    MOV BX,AX               ;MOVE AX TO BX
    
    MOV AH,2                ;FUNCTION 2
    MOV DL,BH               ;PRINT BH
    INT 21H
    MOV DL,BL               ;PRINT BL
    INT 21H
    INC DH                  ;INCREMENT DH
    LOOP AGAIN              ;LOOP END
    RET                     ;RETURN TO MAIN
    
DISPTBL ENDP
END MAIN