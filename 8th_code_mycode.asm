INCLUDE "EMU8086.INC"
.model small
.stack
.data
.code 

    mov ax,@data
    mov ds,ax

    mov al ,'A'
    mov cx,26
    
    L1:
    mov dl,al 
    mov ah,2
    int 21h
    inc al 
    loop L1 
    PRINTN "" 
    
    
    mov al,'a'
    mov cx,26
    
    L2:
    mov dl,al
    mov ah,2
    int 21h
    inc al
    loop L2 
    
    PRINTN " "  
    
    mov al,'0'
    mov cx,10
    
    L3:
    mov dl,al
    mov ah,2
    int 21h
    inc al
    loop L3