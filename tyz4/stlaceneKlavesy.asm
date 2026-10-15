start:
	scall key
	mvi B, 0
	cmi B, 2
	jzr resetB
	cmi D, '0'
	jzr zero
	cmi D, '1'
	jzr one
	cmi D, '2'
	jzr two
	cmi D, '3'
	jzr three
	jnc err	

zero:
	mvi A, 11000000b
	cmi B, '1'
	jzr zeroSmi
	inc B
	out 0, A	
	jmp start
zeroSmi:
	smi 0, A	
	jmp start

one:
	mvi A, 11111001b
	cmi B, 1
	jzr oneSmi
	inc B
	out 0, A	
	jmp start
oneSmi:
	smi 0, A	
	jmp start
two:
	mvi A, 10100100b
	cmi B, 1
	jzr twoSmi
	inc B
	out 0, A	
	jmp start
twoSmi:
	smi 0, A	
	jmp start

three:
	mvi A, 10110000b
	cmi B, 1
	jzr threeSmi
	inc B
	out 0, A	
	jmp start
threeSmi:
	smi 0, A	
	jmp start

err:
	mvi A, 10000110b
	cmi B, 1
	jzr errSmi
	inc B
	out 0, A	
	jmp start
errSmi:
	smi 0, A	
	jmp start

resetB:
	mvi B, 0
	jmp start
	
