.data
msgInt: .asciiz "Digite a quantidade de números: "
.text
main:
    la $a0, msgInt
    li $v0, 4
    syscall

    li $v0, 5
    syscall

    move $s1, $v0

    mul $a0, $s1, 4
    li $v0, 9
    syscall
    move $s0, $v0

    move $t0, $s0
    li $t1, 0

leitura:
    beq $t1, $s1, sort

    li $v0, 5
    syscall

    sw $v0, 0($t0)
    addi $t0, $t0, 4
    addi $t1, $t1, 1
    j leitura

sort:
    li $t1, 0
outer_loop:
    addi $t7, $s1, -1
    bge $t1, $t7, print
    move $t0, $s0
    li $t2, 0
    sub $t6, $t7, $t1
inner_loop:
    bge $t2, $t6, next_outer
    lw $t4, 0($t0)
    lw $t5, 4($t0)
    
    ble $t4, $t5, no_swap
    sw $t5, 0($t0)
    sw $t4, 4($t0)
no_swap:
    addi $t0, $t0, 4
    addi $t2, $t2, 1
    j inner_loop
next_outer:
    addi $t1, $t1, 1
    j outer_loop

print:
    move $t0, $s0
    li $t1, 0
print_loop:
    bge $t1, $s1, end_print
    
    lw $a0, 0($t0)
    li $v0, 1
    syscall
    
    li $a0, 10 # \n
    li $v0, 11 # Print character
    syscall
    
    addi $t0, $t0, 4
    addi $t1, $t1, 1
    j print_loop
    
end_print:
    li $a0, 10
    li $v0, 11
    syscall

end:
    li $v0, 10
    syscall