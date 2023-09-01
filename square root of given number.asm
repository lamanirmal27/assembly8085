.model small
.stack 100h

.data
    num db 04h
    
    
.code 
    main proc
        mov ax, @data
        mov ds, ax
        
        mov bl, 01h
        mov cl, 01h 
        mov al, num
        
        again: sub al, bl
        jz last
        inc bl 
        inc bl
        inc cl
        jmp again
        last:mov al, cl
        
        mov dl, al 
        add dl, 30h   ;convert to ascii
        mov ah, 02h
        int 21h
        
        mov ah, 4ch
        int 21h
     main endp
    
end  main