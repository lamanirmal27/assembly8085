.model small
.stack 100h
.data
string db 'Programming', '$'
ans db ?
Length dw $-string
.code
    main proc
        mov ax, @data
        mov ds, ax   
        
        mov al, 00h
        mov si, offset string
        mov cx, Length 
        
   back:mov bh, [si]
        cmp bh, 'm'
        JNZ loop1
        inc al
  loop1:inc si
        loop back
        mov ans, al
        
       
        
        mov ah, 4ch
        int 21h
     main endp
    
    
 end main