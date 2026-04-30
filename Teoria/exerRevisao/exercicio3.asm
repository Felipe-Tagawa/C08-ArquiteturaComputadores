.data
    msg:      .asciiz "Digite um número inteiro e positivo: "
    msgmaior: .asciiz "\nO maior valor é: "

.text
    li $t0, 0        # contador = 0
    li $s0, 0        # maior = 0

volta:
    bge $t0, 5, fim  # se contador >= 5, sai do loop

    la $a0, msg
    li $v0, 4
    syscall

    li $v0, 5        # lê inteiro
    syscall
    add $t1, $v0, $0   # t1 = número lido

    bgt $t1, $s0, greater
    j proximo

greater:
    add $s0, $t1, $0    # maior = t1

proximo:
    addi $t0, $t0, 1 # contador++
    j volta

fim:
    la $a0, msgmaior
    li $v0, 4
    syscall

    move $a0, $s0
    li $v0, 1
    syscall

    li $v0, 10
    syscall