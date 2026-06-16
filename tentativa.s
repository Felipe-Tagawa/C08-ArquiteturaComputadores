start:
    addiu $8, $0, 0x0000    # leitura word 0
    addiu $9, $0, 0x0011    # escrita começa na word 17 (9+8 = última)
    addiu $10, $0, 9        # contador = 9
    addiu $12, $0, 1        # passo = 1 word

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
