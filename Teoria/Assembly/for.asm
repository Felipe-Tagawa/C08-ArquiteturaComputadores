#i = 0;
#for (x = 1; x < 5; x++) {
#	i++;
#}

.text

li $t1, 0 # i = 0
li $t2, 1 # x = 1

volta:
blt $t2, 5, menor
j fim
menor: addi $t1, $t1, 1 # i++
       addi $t2, $t2, 1 # x++
       j volta
fim: