.model small
.stack
.data
    sum dw 0
.code
         
         mov ax,@data
         mov ds,ax
         
    mov bx,100
    mov ax,0
    
  L1:
     add ax,bx
     sub bx,5
     cmp bx,5
     jge L1     
     
     
     mov sum,ax
     
  exit: