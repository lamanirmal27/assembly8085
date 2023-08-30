        LXI C000H
        MVI C, 02H
        MOV A, M
loop1:  INX H
        CMP M 
        JC here
        MOV A, M 
here:   DCR C 
        JNZ  loop1
        STA E000H
        hlt