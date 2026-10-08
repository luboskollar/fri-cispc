start:
	scall key
	cmi D, 27
	jzr koniec
	cmi D, 13
	jzr vypisZnaky
	jnz ulozZnak
vypisZnaky:
	mvi B, 0
vypis:
	ldr D,B
	inc B
	scall dsp
	cmp A, B
	jnz vypis
	mvi D, 13
	scall dsp
	mvi D, 10
	scall dsp
	mvi A, 0
	jmp start
ulozZnak:
	str A, D
	inc A
	jmp start
koniec: