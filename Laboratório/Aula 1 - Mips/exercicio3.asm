li $t1, 0xFF
li $t2, 0xF0

and $t0 ,$t1, $t2 # 0xFF and 0xF0

li $t3, 1

or $t3, $t0, $t3 # 0xF0 or 1