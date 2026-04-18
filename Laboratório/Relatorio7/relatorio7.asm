.data

len: .byte 6
data: .half 10, 20, 30, 3, 2, 4 # Array de Inteiros

.text

main:
	
lb $t0, len
la $t1, data 
li $t2, 0 # Total
li $t3, 0 # contador i

return:
blt $t3, $t0, less
	
j end
less:
	lh $t4, 0($t1) # Cada valor do vetor
	add $t2, $t2, $t4 # total + data[i]
	addi $t1, $t1, 2 # Offset half
	addi $t3, $t3, 1 # i++
	j return
end:	

	
li $v0, 1
move $a0, $t2 # Mover valor de $t2 para $a0
syscall
		
li $v0, 10
syscall
	



