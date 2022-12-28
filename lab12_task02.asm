include mymacro.mac
.model small
.stack 100h
.data
    myname dw "My name is Nabeel $"
    age db "My age is 20 $"
    address db "My address is 1234 $"
    nation db "I am a British National $"
    study db "I am persueing bachelors in CS from SSUET"
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Display bio data on the screen
    mov ah, 09h
    lea dx, myname
    int 21h
    crlf
    mov ah, 09h
    lea dx, age
    int 21h
    crlf
    mov ah, 09h
    lea dx, address
    int 21h
    crlf
    mov ah, 09h
    lea dx, nation
    int 21h
    crlf
    mov ah, 09h
    lea dx, study
    int 21h

    ; Exit program
    mov ah, 4ch     ; function to terminate program
    int 21h         ; call interrupt to terminate program
main endp
end main