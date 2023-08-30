        MVI C, 05H
        LXI C000H
        MOV A, M 
        ANI 01
        JZ loop1
        LXI H, C00EH
        MOV M, A
        INX H
        
loop1:  DCR C
        JNZ loop2