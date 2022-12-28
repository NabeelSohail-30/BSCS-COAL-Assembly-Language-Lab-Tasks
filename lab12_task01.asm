include mymacro.mac
.model small
.stack 100h
.data
    msg db "Enter a character: $"
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Use the macro to take a single character input and display it in a new line
    input_and_display msg

    ; End the program
    mov ax, 4c00h
    int 21h
main endp
end main