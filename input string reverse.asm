.model small
.stack 100h

.data
  str db dup(0) 

.code
    main proc
        mov ax, @data
        mov ds, ax   
        
        lea si, str
        lea di, str
        mov al, '$'
        mov [di], al 
        inc di
        mov ah, 01h
   next:
        int 21h
        cmp al, 0dh
        je terminate
        mov [di], al
        inc di
        jmp next
        
terminate:
        mov al, '$'
        mov [di], al
        
 dothis:
        dec di
        cmp [di], '$'
        JE xx
        mov dl, [di]
        mov ah, 02h
        int 21h  
        loop dothis
                       
    
      xx:  
        mov ah, 4ch
        int 21h
    main endp
    
 end main