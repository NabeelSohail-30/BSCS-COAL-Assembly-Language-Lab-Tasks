title lab 06 activity 02
.model small
.stack 32h
.data
.code
start:
    mov ah, 02h     ;service call

    mov cx, 5       ;initialize cx
    mov dl, 31h     ;initialize dl with hex code of 1
    again:          ;label
        int 21h     ;print character
        inc dl      ;inc dl
    loop again

    mov dl, 0ah     ;line feed
    int 21h         ;print character
    mov dl, 08h     ;backspace char
    mov cx, 4       ;initialize counter
    back:
        int 21h     ;print character
    loop back

    mov cx, 3       ;initialize counter
    mov dl, 32h     ;initialize dl with hex of 2
    again2:         ;label
        int 21h     ;print character
        inc dl      ;inc dl
    loop again2

    mov dl, 0ah     ;line feed
    int 21h         ;print character
    mov dl, 08h     ;backspace char
    mov cx, 2       ;initialize counter
    back2:
        int 21h     ;print character
    loop back2

    mov dl, 33h     ;initialize dl with 3
    int 21h         ;print character

    mov dl, 0ah     ;line feed
    int 21h         ;print character
    mov dl, 08h     ;backspace char
    mov cx, 2       ;initialize counter
    back3:
        int 21h     ;print character
    loop back3

    mov cx, 3       ;initialize counter
    mov dl, 34h     ;initialize dl with 4
    again3:         ;label
        int 21h     ;print character
        dec dl      ;inc dl
    loop again3

    mov dl, 0ah     ;line feed
    int 21h         ;print character
    mov dl, 08h     ;backspace char
    mov cx, 4       ;initialize counter
    back4:
        int 21h     ;print character
    loop back4

    mov cx, 5       ;initialize counter
    mov dl, 35h     ;initialize dl with 5
    again4:         ;label
        int 21h     ;print character
        dec dl      ;inc dl
    loop again4

    mov ah, 4ch     ;service call
    int 21h         ;exit
end start