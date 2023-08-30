        MVI B, 01H	;DIVIDER
        MVI D, 00H	
        LDA 2060H
        MOV C, A
loop:   LDA 2060H
here:	SUB B
		JM loop1
        JNZ here
        INR D
loop1:  INR B
		DCR C
        JNZ loop
        mov A, D
        CPI 02
        JZ loop2
        MVI A, FFH ;COMPOSITE
        STA C00FH
        HLT
loop2:	MVI A, 00H ;PRIME
		STA C00FH
        HLT