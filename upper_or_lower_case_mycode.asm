.model small
.stack
.data
    siam db "input character$" 
    msg1 db "Uppercase$"
    msg2 db "Lowercase$"
    
.code 
    mov ax, @data
    mov ds, ax

    
    lea dx, siam
    mov ah, 9
    int 21h

 
    mov ah, 1
    int 21h

   
    cmp al, 65         
    jl check_lower      
    cmp al, 90          
    jg check_lower      

   
    mov ah, 9
    lea dx, msg1 
    int 21h
    jmp exit 

check_lower:
   
    cmp al, 97          
    jl exit            
    cmp al, 122        
    jg exit             

    
    mov ah, 9
    lea dx, msg2 
    int 21h
    jmp exit 

exit:
    
