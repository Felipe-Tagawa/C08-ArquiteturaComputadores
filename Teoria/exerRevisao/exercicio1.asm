.data
msg: .asciiz "Digite um número inteiro e positivo: "
msgp: .asciiz "PAR"
msgi: .asciiz "IMPAR"

valor: .byte 2

.text

la $a0, msg 
li $v0, 4 #PRINTSTRING
syscall

li $v0, 5 # READINT
syscall

add $t0, $v0, $0
lb $t1, valor
div $t0, $t1
mfhi $t2
beqz $t2, par

	la $a0, msgi
	li $v0, 4
	syscall
j fim
par:
	la $a0, msgp
	li $v0, 4
	syscall
	
fim:
	


