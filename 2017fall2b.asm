	mvi C, 0AH
        LXI H, C000H
        LXI D, C00EH
loop1:	mov A, M
	ANI 01H
        JZ loop
        MOV A, M
        STAX D
        INX D
loop:	INX H
	DCR C
        jnz loop1
        hlt