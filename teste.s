start:
	addiu $4,$0, 0x0010
	jal print_int

	addiu $4,$4, 0x0010

print_int:
	addu $2,$0, $4
	jr $31
