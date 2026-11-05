mxi M, 0

start:
	scall key
	smr D
	inx M
	cmi D, 27
	jzr koniec
	cmi D, 13
	jzr prepis
	jmp start

prepis:
	mvx C, M
	mov A, C
	mov B, D
	mxi M, 0

vypis:
	lmr D
	scall dsp
	inx M
	mvx C, M	

	cmp C, A
	jnz vypis
	cmp D, B
	jnz vypis
	jmp start

koniec: