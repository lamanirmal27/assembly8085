        LXI H, 3500H
        MVI E, 02H
        MVI B, 00H
        MVI C, 05H
loop2:	MOV A, M
loop:	SUB E
        JM loop1
        JNZ loop
        INR B
loop1:	INX H
        DCR C
        JNZ loop2
    HLT