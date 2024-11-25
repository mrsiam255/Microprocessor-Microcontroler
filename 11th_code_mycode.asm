.model small
.stack
.data  

    sum dw 0
.code

main proc  
    
    mov ax,@data
    mov ds,ax
    
    mov cx,50 
    mov ax,1 
    mov dx,0
    
    
    L1:
    add dx,ax
    add ax,4
    loop L1
    
    mov sum,dx   
    
    exit:
      
      
      
      
      
      
     

     