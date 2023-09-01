.model small   

.code 
    main proc
       mov ah, 01h
       int 21h
       
       sub al, 30h ;converting ascii into decimal
       mov cl, al
       mov ch, 00h
       mov ax, 0001h
       mov dx, 0000h
       mov bx, 0001h
       
       yy:mul bx
       dec cx
       cmp cx, 00h
       je xx
       inc bx
       jmp yy
       
       xx:
       
      mov ans, dx 
    
        mov ah, 4ch
        int 21h
    main endp
 end  main