TITLE LAB11ACT2
      
.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB 'ENTER THE PASSWORD... $'
MSG2 DB 0AH, 0DH, 'ENTER IT AGAIN... $'  
MSG3 DB 0AH, 0DH, 'CONGRATULATIONS!... $'
MSG4 DB 0AH, 0DH, 'ALAS! YOU FAILED TO ENTER THE CORRECT PASSWORD.$' 
PASSWORD DB 50 DUP ('$')
PASSWORD_LEN DB 0H
CMP_PASSWORD 50 DUP ('$')
CMP_PASS_LEN DB 0H
 
.CODE                           ;CODE SEGMENT
   Nabeel PROC
    
    MOV AX, @DATA               ;DATA SEGMENT INITIALIZE
    MOV DS, AX
    MOV ES, AX                  ; INITIALIZE EXTRA SEGMENT

    CLD                         ;CLEAR DIRECTION FLAG FOR AUTO INCREMENT
    MOV AH, 9                   ;FUNCTION 9
    LEA DX, MSG1                ;DISPLAY MSG1
    INT 21H                     ;INTURREPT

    MOV CX, 2                   ;WE NEED TO TAKE INPUT ONCE FOR THE STORE
    LEA SI, PASSWORD            ;MAINTAIN THE PASSWORD
    LEA DI, PASSWORD_LEN        ;MAINTAIN THE PASSWORD LENGTH

INPUT:                          ;JUMP LABEL
    MOV AH,7                    ;FUNCTION 7 READ CHARACTER FROM CONSOLE
    INT 21H                     ;INTURREPT
    CMP AL, 13                  ;COMPARE WITH ENTER
    JE NEXT1                    ;JUMP IF EQUAL
    MOV [SI], AL                ;STORE AL CONTENT TO MEMORY SI
    INC SI                      ;INCREMENT SI
    ADD [DI], 1                 ;ADD 1 ON MEMORY DI
 
    MOV AH,2                    ;FUNCTION 2
    MOV DL,'*'                  ;DISPLAY CHARACTER
    INT 21H                     ;INTURREPT
    JMP INPUT                   ;UNCONDITIONAL JUMP

NEXT1:                          ;JUMP LABEL
    DEC CX                      ;DECREMTN CX
    JZ NEXT2                    ;JUMP IF ZERO
    
    MOV AH, 9                   ;FUNCTION 9
    LEA DX, MSG2                ;DISPLAY MSG 2
    INT 21H                     ;INNTURREPT

    LEA SI, CMP_PASSWORD        ;MAINTAIN THE ANOTHER PASSWORD
    LEA DI, CMP_PASS_LEN        ;MAINTAIN THE ANOTHER PASSWORD LENGTH
    JMP INPUT                   ;UNCONDITIONAL JUMP

NEXT2:                          ;JUMP LABEL
    CALL COMPARE                ;CALL PROCEDURE
    MOV AH,4CH                  ;EXIT TO DOS
    INT 21H                     ;INTERRUPT
    
    Nabeel ENDP

COMPARE PROC  

    MOV AL, PASSWORD_LEN        ;STORE STORE PASSWORD LENGTH IN AL
    CMP AL, CMP_PASS_LEN        ;COMAPRE BOTH PASSWORD LENGHT
    JNZ FALSE                   ;JUMP IF NOT ZERO THEN JUMP IN FALSE

    MOV CL, PASSWORD_LEN        ;ITERATION
    LEA SI, PASSWORD            ;STORE THE PASSWARD IN SI
    LEA DI, CMP_PASSWORD               ;STORE ANOTHER PASSWARD IN DI
    
    REPE CMPSB                  ;REPEAT BOTH STRIGNS AS LONG AS BOTH ARE OK
    JNZ FALSE                   ;JUMP IF NOT ZERO THEN JUMP TO FALSE
    JMP TRUE                    ;JUMP TO TRUE (UNCONDITIONAL JUMP)
    
FALSE:                          ;JUMP LABEL
    MOV AH, 9                   ;FUNCTION 9
    MOV DX, OFFSET MSG4         ;DISPLAY MSG 4
    INT 21H                     ;INTURREPT
    JMP EXIT                    ;JUMP TO EXIT

TRUE:                           ;JUMP LABEL
    MOV AH, 9                   ;FUNCTION 9
    MOV DX, OFFSET MSG3         ;DISPLAY MSG 3
    INT 21H                     ;INTURREPT
    
EXIT:                           ;EXIT LABEL
    RET                         ;RETURN
    
COMPARE ENDP

END Nabeel