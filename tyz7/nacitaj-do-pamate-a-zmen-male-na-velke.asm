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

kontrola:
	lmr D
	cmi D, 'a'
	jl vypis
	cmi D, 'z'
	jg vypis
	cal zmena 
vypis:
	scall dsp
	inx M
	mvx C, M	

	cmp C, A
	jnz kontrola
	cmp D, B
	jnz kontrola
	jmp reset

zmena:
	sbi D, 'a'
	adi D, 'A'
	ret

reset:
	mxi M, 0
	jmp start

koniec: