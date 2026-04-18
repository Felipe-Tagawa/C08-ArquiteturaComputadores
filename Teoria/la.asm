.data 0x10010008 # iniciar no 8° byte
m: .half 0xCAFE
n: .word 0x01020304

.text

la $t1, m # Buscar o endereço de memória de m
la $t2, n