include 'emu8086.inc' 

.model small
.stack 100h

.data
    string db 'MICROPROCESSOR', '$'
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 09h
        mov dx, offset string
        int 21h
        
        mov ah, 4ch
        int 21h
    proc endp
    
  end main