.model small
.stack 100h
.data
array db 01,02,03,04,05
result db ?

.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov cl, 05h
        mov ax, 0
        mov bx, offset array
        
  check:add al, [bx]
        inc bx
        dec cl
        JNZ check 
        
        mov result, al
        
        mov ah, 4ch
        int 21h
        
    main endp
    
end main