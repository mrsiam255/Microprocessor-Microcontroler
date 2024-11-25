.model small
.stack
.data
.code

main proc

    mov ah,1 
    int 21h
    mov bl,al    
    
    mov ah,1 
    int 21h
    mov bh,al 
    
    mov ah,1 
    int 21h
    mov cl,al 
    
    
    cmp bl,bh
    jle L1 
    
    cmp bh,cl
    jle L3   
    
    mov ah,2
    mov dl,cl
    int 21h 
   jmp exit 
    
    
  L1:
  
    cmp bl,cl
    jle L2
    
  L2:
     mov ah,2
     mov dl,bl
     int 21h  
     
     jmp exit  
     
  L3:
     mov ah,2
     mov dl,bh
     int 21h   
    jmp exit  
    
  exit:
  ;ret 
     
  
               
               
main endp
end main
    
    
    