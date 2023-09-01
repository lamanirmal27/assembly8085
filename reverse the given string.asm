.model small
.stack 100h

.data
    str db  '$', 'MICROPROCESSOR', '$'  
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea di, str
        loop1:
        inc di
        cmp [di], '$'
        je loop2
        loop loop1
        
        loop2: 
        dec di
        mov dl, [di]
        cmp dl, '$'
        je end
        mov ah, 02h
        int 21h
        loop loop2
        
        end:
        mov ah, 4ch
        int 21h
        
     main endp
    
end main