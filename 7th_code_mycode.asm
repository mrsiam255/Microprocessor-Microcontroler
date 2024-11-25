.model small
.stack
.data
    sum dw 0
.code

    main proc
        
        mov ax,@data
        mov ds,ax
        
        mov bx,1
        mov ax,0
        
      L1:
        add ax,bx
        add bx,3
        cmp bx,148
        jle L1
        
        
      exit:   
      
      mov sum,ax
      
      main endp    
      end main