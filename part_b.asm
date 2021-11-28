
;Pulse

	lxi B, 166
Loop:   dcx B
        mov A, C
        ora B
	jnz Loop
	mvi A, 1
	nop
	nop
	out 00H


hlt

