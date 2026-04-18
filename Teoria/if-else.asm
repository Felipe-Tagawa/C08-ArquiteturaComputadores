# x = 10 ($t1)
# y = 5 ($t2)
# i = 50 ($t3)
# if (x == y) {
#	i++; }
# else {
#	i--;
# }

.text
li $t1, 0x10
li $t2, 0x5
li $t3, 0x50

beq $t1, $t2, iguais
addi $t3, $t3, -1 # i--
j fim # jump (continue para não executar o iguais se for falso)
iguais:
	addi $t3, $t3, 1 # i++
fim:
	
