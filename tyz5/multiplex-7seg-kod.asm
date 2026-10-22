Start:
	mvi A, 10001000b
	out 11101100b, A
	mvi A, 10001001b
	out 11011100b, A
	mvi A, 11000000b
	out 10111100b, A
	mvi A, 11110001b
	out 01111100b, A

	jmp Start 