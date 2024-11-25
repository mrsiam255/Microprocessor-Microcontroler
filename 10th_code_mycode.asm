.model small
.stack 
.data
    sam db "input$"
   
.code
main proc 
    
    
    mov ax, @data
    mov ds, ax
               
               
               
    mov ah, 9
    lea dx, sam
    int 21h
    
    mov ah, 1
    int 21h
    
    mov cx, 80 
    
    
L1:
    mov dl, 'A'
    mov ah, 2
    int 21h
    loop L1

   
main endp
end main
