start:
	inn A, 1110b
	ani A, 00001111b
	cmi A, 1111b
	jnz first_row

	inn A, 1101b
	ani A, 00001111b
	cmi A, 1111b
	jnz second_row
	
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

bt_0:
	mvi D, '0'
	scall dsp
	jmp wait
bt_1:
	mvi D, '1'
	scall dsp
	jmp wait
bt_2:
	mvi D, '2'
	scall dsp
	jmp wait
bt_3:
	mvi D, '3'
	scall dsp
	jmp wait
bt_4:
	mvi D, '4'
	scall dsp
	jmp wait
bt_5:
	mvi D, '5'
	scall dsp
	jmp wait
bt_6:
	mvi D, '6'
	scall dsp
	jmp wait
bt_7:
	mvi D, '7'
	scall dsp
	jmp wait


wait:
	inn A, 0
	ani A, 00001111b
	cmi A, 1111b
	jzr start
	jnz wait