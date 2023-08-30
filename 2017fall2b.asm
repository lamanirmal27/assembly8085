	MVI C, 0AH
        LXI H, C000H
        LXI D, C00EH
loop1:	MOV A, M
	ANI 01H
        JZ loop
        MOV A, M
        STAX D
        INX D
loop:	INX H
	DCR C
        JNZ loop1
        hlt