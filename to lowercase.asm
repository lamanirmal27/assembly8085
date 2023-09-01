.model small
.stack 100h

.data
  str db 'MICROPROCESSOR$'

.code
    main proc
        mov ax, @data
        mov ds, ax   
        
        lea si, str

   next:
        mov al, [si]
        cmp al, '$'
        je terminate
        
        ; Check if the character is an uppercase letter
        cmp al, 'A'
        jl notUppercase
        cmp al, 'Z'
        jg notUppercase
        
        ; Convert uppercase to lowercase by adding 32
        add al, 32
        
  notUppercase: 
        mov dl, al
        mov ah, 02h
        int 21h
        
        inc si
        jmp next
        
terminate:
        mov ah, 4ch
        int 21h
    main endp
    
 end main
