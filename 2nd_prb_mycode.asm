.model small
.stack 100h
.data 
    m db "input: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 1
    int 21h
    mov bl, al

    sub bl, 32

    mov ah, 2
    mov dl, bl
    int 21h

   
main endp
end main
