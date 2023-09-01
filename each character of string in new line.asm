.model small
.stack 100h

.data
  str db 'MICROPROCESSOR', '$'  ; Define the string

.code
    main proc
        mov ax, @data
        mov ds, ax   
        
        lea di, str

   next:
        mov al, [di]
        cmp al, '$'
        je terminate
            
        mov dl, al    
        mov ah, 02h
        int 21h
        
        mov dl, 0Dh       ; Carriage return
        int 21h
        
        mov dl, 0Ah       ; Line feed (move to the next line)
        int 21h
        
        inc di
        jmp next
        
terminate:
        mov ah, 4ch
        int 21h
    main endp
    
 end main
