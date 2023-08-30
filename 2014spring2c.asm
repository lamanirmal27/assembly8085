  start:LXI H, 2200H
        MVI C, 0AH
        MVI D, 00H
   here:MOV A, M
        INX H
        CMP M
        JC go 
        JZ go
        MOV B, M ;swaping here
        MOV M, A
        DCX H
        MOV M, B
        MVI D, 01H
     go:DCR C
     	JNZ here
        MOV A, D
        CPI 01H
        JZ start
        hlt
