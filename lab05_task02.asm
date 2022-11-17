title lab 05 act 02

.model small
.stack 100h
.data
    head db "The 256 ASCII Char Are $"
    prompt db "Press any key to continue $"
    NEWLINE db 0ah, 0dh, "$"
    end db "The End $"
.code
start:
    mov ax, @data   ;initialize data segment
    mov ds, ax

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0h      ;null char ascii code

    AGAIN:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------

    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 15h      ;null char ascii code

    AGAIN_2:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_2       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 29h      ;null char ascii code

    AGAIN_3:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_3       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 3dh      ;null char ascii code

    AGAIN_4:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_4       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 51h      ;null char ascii code

    AGAIN_5:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_5       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 65h      ;null char ascii code

    AGAIN_6:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_6       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 79h      ;null char ascii code

    AGAIN_7:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_7       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 8dh      ;null char ascii code

    AGAIN_8:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_8       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0a1h      ;null char ascii code

    AGAIN_9:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_9       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0b5h      ;null char ascii code

    AGAIN_10:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_10       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0c9h      ;null char ascii code

    AGAIN_11:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_11       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 20      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0ddh      ;null char ascii code

    AGAIN_12:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_12       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, prompt
    int 21h

    mov ah, 01h
    int 21h

    ;-------------------------------------------------

    mov ax, 0600h   ;scroll entire screen
    mov bh, 07h
    mov cx, 00h
    mov dx, 184fh
    int 10h

    ;-------------------------------------------------

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 0019h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, head
    int 21h

    mov ah, 02h     ;set cursor position
    mov bh, 0000h
    mov dx, 0100h
    int 10h

    ;-------------------------------------------------
    
    mov cx, 15      ;initialize cx

    mov ah, 02h     ;display single char function
    mov dl, 0f1h      ;null char ascii code

    AGAIN_13:    ;loop
        int 21h     ;execute dos function

        inc dl      ;inc dl
        push dx     ;push dx into stack

        mov ah,2    ;code to display new line    
        mov dl, 0ah
        int 21h
        mov ah, 2
        mov dl, 0dh
        int 21h

        pop dx      ;pop dx from stack
        dec cx      ;dec cx
    jnz AGAIN_13       ;jump if cx = 0

    ;-------------------------------------------------

    mov ah, 09h     ;print new line
    lea dx, NEWLINE
    int 21h

    MOV AH, 2       ;set cursor position
    MOV BH, 0000h
    MOV DX, 1619h
    INT 10h

    mov ah, 09h     ;print string
    lea dx, end
    int 21h

    ;-------------------------------------------------

    mov ax, 4c00h   ;terminate program
    int 21h

    ;-------------------------------------------------
end start