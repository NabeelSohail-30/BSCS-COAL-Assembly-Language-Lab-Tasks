include mymacro.mac
.model small
.stack 100h
.data
    result1 dw 0
    result2 dw 0
    result3 dw 0
    result1_str db "Result 01: $"
    result2_str db "Result 02: $"
    result3_str db "Result 03: $"
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Multiply 2000 x 500
    mulByAdd 2000, 500
    mov result1, ax

    ; Multiply 2500 x 500
    ;mulByAdd 2500, 500
    ;mov result2, ax

    ; Multiply 300 x 400
    ;mulByAdd 300, 400
    ;mov result3, ax

    ; Display results on screen
    mov ah, 09h     ; function to display string on screen
    mov dx, offset result1_str   ; address of string to display
    int 21h         ; call interrupt to display string
    displayWord result1 ;call macro to display word
    crlf
    mov ah, 09h     ; function to display string on screen
    mov dx, offset result2_str   ; address of string to display
    int 21h         ; call interrupt to display string
    displayWord result2 ;call macro to display word    
    crlf
    mov ah, 09h     ; function to display string on screen
    mov dx, offset result3_str   ; address of string to display
    int 21h         ; call interrupt to display string
    displayWord result3 ;call macro to display word
    
    exitToDos
main endp
end main


