title lab 10 act 3

.model small
.stack 100h
.data
    inp1 db "Enter Number 01: $"
    inp2 db "Enter Number 02: $"
    num1 db ?
    num2 db ?
    res dw ?
    resPrompt db "Result = $"
    addHead db "Addition $"
    subHead db "Subtraction $"
    mulHead db "Multiplication $"
    divHead db "Division $"
.code
main proc
    ;intialize data segment
    mov ax, @data
    mov ds, ax

    ;display heading add
    mov ah, 09h
    lea dx, addHead
    int 21h

    call newline

    ;add num1 and num2
    call OperationAdd

    ;display result
    call DispRslt

    call newline
    call newline
    
    ;display heading sub
    mov ah, 09h
    lea dx, subHead
    int 21h

        call newline

    ;subtract num1 and num2
    call OperationSub

    ;display result
    call DispRslt

    call newline
    call newline

    ;display heading mul
    mov ah, 09h
    lea dx, mulHead
    int 21h

        call newline

    ;multiply num1 and num2
    call OperationMul

    ;display result
    call DispRslt

    call newline
    call newline

    ;display heading div
    mov ah, 09h
    lea dx, divHead
    int 21h

        call newline

    ;divide num1 and num2
    call OperationDiv

    ;display result
    call DispRslt
    
    mov ah, 4ch     ;exit to dos function
    int 21h    
main endp

DispRslt proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx
    
    call newline

    ;display prompt
    mov ah, 09h
    lea dx, resPrompt
    int 21h

    ;display result
    mov bx, res
    
    mov ah, 02h
    mov dl, bh
    int 21h
    mov dl, bl
    int 21h
    
    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
DispRslt endp

OperationAdd proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx

    ;take input
    call inpnmbr

    ;add num1 and num2
    mov al, num1
    add al, num2

    mov ah, 0
    aaa         ;ascii adjust

    mov bx, ax
    add bl, 48
    add bh, 48

    mov res, bx

    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
OperationAdd endp

OperationSub proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx

    ;take input
    call inpnmbr

    ;subtract num1 and num2
    mov al, num1
    sub al, num2

    mov ah, 0
    aas         ;ascii adjust

    mov bx, ax
    add bl, 48
    add bh, 48

    mov res, bx

    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
OperationSub endp

OperationMul proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx

    ;take input
    call inpnmbr

    ;multiply num1 and num2
    mov al, num1
    mul num2

    mov ah, 0
    aam         ;ascii adjust

    mov bx, ax
    add bl, 48
    add bh, 48

    mov res, bx

    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
OperationMul endp

OperationDiv proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx

    ;take input
    call inpnmbr

    mov al, num1
    and ax, 0f0h
    aad
    mov bh, num2
    div bh
    or ax, 3030h

    mov bx, ax
    add bl, 48
    add bh, 48

    mov res, bx

    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
OperationDiv endp

inpnmbr proc
    ;push into stack
    push ax
    push bx
    push cx
    push dx

    ;prompt user to enter num 1
    mov ah, 09h 
    lea dx, inp1
    int 21h

    ;get user input
    mov ah, 01h
    int 21h
    mov num1, al

    call newline
    
    ;prompt user to enter num 2
    mov ah, 09h
    lea dx, inp2
    int 21h
    
    ;get user input
    mov ah, 01h
    int 21h
    mov num2, al

    ;pop from stack
    pop dx
    pop cx
    pop bx
    pop ax

    ret
inpnmbr endp

newline proc
    mov ah, 02h
    mov dl, 0dh
    int 21h
    mov dl, 0ah
    int 21h
    ret
newline endp

end main