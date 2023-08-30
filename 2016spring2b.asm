        MVI A, 00H
        MVI B, 42H
        MOV C, 37H
here:   ADD B
        DCR C
        JNZ here
        STA E010H
        hlt