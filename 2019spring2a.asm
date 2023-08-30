		LDA D001H
		RAL
        JC LOOP1
        LDA D001H
        STA C001H
        HLT
        
LOOP1:  LDA D001H
		STA C002H
		HLT
        