# x = 10 ($t1)
# y = 20 ($t2)
# while (x < y){
#	x++;
# }

.text

li $t1, 0x10
li $t2, 0x15

volta:
blt $t1, $t2, menor  # x < y ?
j fim
menor: addi $t1, $t1, 1
	j volta 
fim: