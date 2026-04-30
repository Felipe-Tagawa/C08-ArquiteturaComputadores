# JaL (Jump n Link): salta incondicionalmente e salva o endereço de retorno no registrador $ra (Return Address).
# Jr (Jump Register): salta incondicionalmente para um registrador indicado (apontado, pré-definido).

.text
li $t1, 0x10
li $t2, 0x20
add $t3, $t2, $t1
jal subtrai
addi $t1, $t1, 0x5
addi $t2, $t2, 0x8
j fim

# De modo geral, funções são definidas depois, pois seriam lidas anteriormente
subtrai:
    sub $t4, $t2, $t1
    jr $ra

fim: