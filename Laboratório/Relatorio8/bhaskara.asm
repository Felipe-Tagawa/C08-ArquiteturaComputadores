.data
    x1: .asciiz "Xi: "
    x2: .asciiz "\nXii: "
    res1: .word 0     # Xi p memoria
    res2: .word 0    # Xii p memoria

.text
main:
    li $s0, 1
    li $s1, -5
    li $s2, 6

    mul $t0, $s1, $s1
    mul $t1, $s0, $s2
    mul $t1, $t1, 4
    sub $t2, $t0, $t1

    li $t3, 0
sqrt_loop:
    mul $t4, $t3, $t3
    bgt $t4, $t2, sqrt_done
    addi $t3, $t3, 1
    j sqrt_loop
sqrt_done:
    addi $t3, $t3, -1

    neg $t4, $s1
    mul $t5, $s0, 2

    add $t6, $t4, $t3
    div $t6, $t6, $t5
    sw $t6, res1        # salva Xi na memoria

    sub $t6, $t4, $t3
    div $t6, $t6, $t5
    sw $t6, res2        # salva Xii na memoria

    # imprime
    la $a0, x1
    li $v0, 4
    syscall
    lw $a0, res1        # carrega Xi da memoria
    li $v0, 1
    syscall

    la $a0, x2
    li $v0, 4
    syscall
    lw $a0, res2        # carrega Xii da memoria
    li $v0, 1
    syscall

    li $v0, 10
    syscall