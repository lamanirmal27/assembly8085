        MVI D, 09H
        MVI A, 00H
loop1:  MOV C, D
here:   ADD D 
        DCR C
        JNZ here
        DCR D 
        STA 2200H
        hlt