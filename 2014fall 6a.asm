include 'emu8086.inc' 

.model small
.stack 100h

.data
    string db 'POKHARA UNIVERSITY', '$'
    length dw $-string 
    
    
.code
    main proc
        mov ax, @data
        mov ds, ax 


        mov cx, length
        mov si, offset string 

   loop1:mov ah, 02h
        mov dl, [si]       
        cmp dl, '$'
        je end_loop
        int 21h
        inc si
        dec cx
        jmp loop1     
        
        end_loop:
        
        mov ah, 4ch
        int 21h
    proc endp
    
  end main