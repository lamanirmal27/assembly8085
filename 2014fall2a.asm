	LXI H, D000H
        MVI C, 0AH
        MVI D, 00H
        MVI B, 08H
  loop1:MOV A, M
        CMP B
        JNZ loop
        INR D
        
   loop:INX H
    	DCR C
        JNZ loop1
        
        mov A, D
        STA C000H
        hlt
