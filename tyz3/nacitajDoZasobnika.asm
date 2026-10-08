start:
	scall key
	cmi D, 27
	jzr koniec
	cmi D, 13
	jzr vypisZnaky
	jnz ulozZnak
vypisZnaky:
vypis:
	dec A
	pop D
	scall dsp
	cmi A, 0
	jnz vypis
	mvi D, 13
	scall dsp
	mvi D, 10
	scall dsp
	jmp start
ulozZnak:
	pus D
	inc A
	jmp start
koniec: