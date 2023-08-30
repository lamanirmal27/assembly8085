        LXI H, 2500H
        MVI C, 09H
        MOV A, M
loop1:  INX H 
        CMP M 
        JNC here
        MOV A, M
here:   DCR C
        JNZ loop1
        MOV B, A
        hlt