.model small
.stack
.data

        msg1 db "ODD$"
        msg2 db "even$"

.code
      
      mov ax,@data
      mov ds, ax
      
      
      mov ah,1
      int 21h
      
      
      mov bl,2
      div bl
      cmp ah,0
      je even  
      
      mov ah,9
      lea dx, msg1
      int 21h
      jmp exit  
      
      
 even:
 
     mov ah,9
     lea dx,msg2
     int 21h    
     
 exit:

    