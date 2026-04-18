.data

msg: .asciiz "Insira um valor inteiro R: "
qnt100: .asciiz "\n Quantidade de notas 100:"
qnt50: .asciiz "\n Quantidade de notas 50:"
qnt10: .asciiz "\n Quantidade de notas 10:"
qnt1: .asciiz "\n Quantidade de notas 1:"

.text

# Entrada:

la $a0, msg
li $v0, 4
syscall

li $v0, 5
syscall

# Desenvolvimento

add $t0, $v0, $0

div $s0, $t0, 100 #s0 guarda notas de 100
mfhi $t2 # Resto da divisão por 100
div $s1, $t2, 50 #s1 guarda notas de 50
mfhi $t2
div $s2, $t2, 10 #s2 guarda notas de 10
mfhi $s3 #s3 guarda notas de 1

# Notas de 100:
la $a0, qnt100
li $v0, 4
syscall
add $a0, $s0, $0
li $v0, 1
syscall

# Notas de 50:
la $a0, qnt50
li $v0, 4
syscall
add $a0, $s1, $0
li $v0, 1
syscall

# Notas de 10:
la $a0, qnt10
li $v0, 4
syscall
add $a0, $s2, $0
li $v0, 1
syscall

# Notas de 1:
la $a0, qnt1
li $v0, 4
syscall
add $a0, $s3, $0
li $v0, 1
syscall





