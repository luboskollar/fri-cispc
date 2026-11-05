start:
	inn A, 0111b
	ani A, 00001111b
	cmi A, 1111b
	jnz first_row

	inn A, 1011b
	ani A, 00001111b
	cmi A, 1111b
	jnz second_row

	inn A, 1101b
	ani A, 00001111b
	cmi A, 1111b
	jnz third_row

	inn A, 1110b
	ani A, 00001111b
	cmi A, 1111b
	jnz fourth_row

	jmp start

first_row:
	cmi A, 0111b
	jzr bt_0
	cmi A, 1011b
	jzr bt_1
	cmi A, 1101b
	jzr bt_2
	cmi A, 1110b
	jzr bt_3
	jmp start

second_row:
	cmi A, 0111b
	jzr bt_4
	cmi A, 1011b
	jzr bt_5
	cmi A, 1101b
	jzr bt_6
	cmi A, 1110b
	jzr bt_7
	jmp start

third_row:
	cmi A, 0111b
	jzr bt_8
	cmi A, 1011b
	jzr bt_9
	cmi A, 1101b
	jzr bt_10
	cmi A, 1110b
	jzr bt_11
	jmp start

fourth_row:
	cmi A, 0111b
	jzr bt_12
	cmi A, 1011b
	jzr bt_13
	cmi A, 1101b
	jzr bt_14
	cmi A, 1110b
	jzr bt_15
	jmp start

bt_0:
	mvi D, '0'
	scall dsp
	mvi D, 11000000b
	out 0, D
	jmp wait
bt_1:
	mvi D, '1'
	scall dsp
	mvi D, 11111001b
	out 0, D
	jmp wait
bt_2:
	mvi D, '2'
	scall dsp
	mvi D, 10100100b
	out 0, D
	jmp wait
bt_3:
	mvi D, '3'
	scall dsp
	mvi D, 10110000b
	out 0, D
	jmp wait
bt_4:
	mvi D, '4'
	scall dsp
	mvi D, 10011001b
	out 0, D
	jmp wait
bt_5:
	mvi D, '5'
	scall dsp
	mvi D, 10010010b
	out 0, D
	jmp wait
bt_6:
	mvi D, '6'
	scall dsp
	mvi D, 10000010b
	out 0, D
	jmp wait
bt_7:
	mvi D, '7'
	scall dsp
	mvi D, 11111000b
	out 0, D
	jmp wait
bt_8:
	mvi D, '8'
	scall dsp
	mvi D, 10000000b
	out 0, D
	jmp wait
bt_9:
	mvi D, '9'
	scall dsp
	mvi D, 10010000b
	out 0, D
	jmp wait
bt_10:
	mvi D, 'A'
	scall dsp
	mvi D, 10001000b
	out 0, D
	jmp wait
bt_11:
	mvi D, 'B'
	scall dsp
	mvi D, 10000011b
	out 0, D
	jmp wait
bt_12:
	mvi D, 'C'
	scall dsp
	mvi D, 11000110b
	out 0, D
	jmp wait
bt_13:
	mvi D, 'D'
	scall dsp
	mvi D, 10100001b
	out 0, D
	jmp wait
bt_14:
	mvi D, 'E'
	scall dsp
	mvi D, 10000110b
	out 0, D
	jmp wait
bt_15:
	mvi D, 'F'
	scall dsp
	mvi D, 10001110b
	out 0, D
	jmp wait

wait:
	inn A, 0
	ani A, 00001111b
	cmi A, 1111b
	jzr start
	jmp wait