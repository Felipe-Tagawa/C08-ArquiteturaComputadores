start:
    addiu $8, $0, 0x0000    # read = 0
    addiu $9, $0, 0x0011    # write = 0x11 = começo do destino + 8
    addiu $10, $0, 9        # contador = 9
    addiu $12, $0, 1        # constante 1

loop:
    beq $10, $0, fim
    lw $11, 0($8)
    sw $11, 0($9)
    addu $8, $8, $12
    subu $9, $9, $12
    subu $10, $10, $12
    j loop

fim:
    j fim
