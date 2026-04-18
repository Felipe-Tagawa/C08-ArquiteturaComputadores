# (0xFF and 1)
li $t0, 0xFF
li $t1, 1

and $t0, $t0, $t1 # 0xFF and 1

# (2 / 4)

li $t1, 2
li $t2, 4

or $t1, $t1, $t2 # 2 | 4

srl $t3, $t2, 1 # (4 >> 1)
li $t4, 10

mult $t3, $t4 # (2 * 10)
mflo $t3  

li $t5, 1
sll $t4, $t5, 1 # (1 << 1)

div $t3, $t4 # (20 / 2)
mflo $t3

sub $t0, $t0, $t1 # (1 - 6)

add $t1, $t0, $t3 # (-5 + 10)
