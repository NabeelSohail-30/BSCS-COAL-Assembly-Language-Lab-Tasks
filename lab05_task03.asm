title lab 05 activity 03
.model small
.stack 100h
.data
.code
main proc
    mov ax, @data   ;initialize data segment
    mov ds, ax         
            
    mov ah,02h  ;set cursor position
    mov bh,00h
    mov dx,0620h
    int 10h
    
    mov cx, 10  ;loop counter
   
   print1:      ;label 1
    mov ah ,02h     
    mov dl,'*'      ;displays star
    int 21h
    
    mov ah,02h
    mov dl,0ah      ;line feed
    int 21h
    
    mov dl,08h      ;backspace
    int 21h
    
    loop print1     ;loop
    
    mov ah,02h      ;set counter
    mov bh,00h
    mov dx,0620h
    int 10h
    
    mov cx, 10      ;counter
   
   print2:          ;label
    mov ah ,02h
    mov dl,'*'      ;display *
    int 21h
    
    mov ah,02h  
    mov dl,0ah      ;line feed
    int 21h
    
    loop print2     ;loop
    
    mov ah,02h      ;set counter
    mov bh,00h
    mov dx,0629h
    int 10h
    
    mov cx, 10      ;set counter
   
   print3:
    mov ah ,02h
    mov dl,'*'      ;display *
    int 21h
    
    mov ah,02h
    mov dl,0ah      ;line feed
    int 21h
    
    mov dl,08h      ;backspace
    int 21h
    
    loop print3

    MOV ah, 4ch     ;terminate the program, send control to OS
    INT 21h
main endp
end main