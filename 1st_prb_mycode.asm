.model small
.stack
.data
.code 


mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h
mov cl,al

sub bl,cl 
add bl,'0'  ; cz asci thik korar jonno char '0' add krci
mov ah,2
mov dl,bl 
int 21h
