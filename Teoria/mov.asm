.data
n1: .byte 0x20
n2: .half 0x3040
n3: .word 0xAABBCCDD

.text
# Trazer o Dado 0xBB para $T1
# BB está no endereço de memória 0x10010006
# Mas não faz sentido decorar todos os endereços de memória possíveis de cada dado
LA $t0, n3 # Carregando o endereço de memória de n3 para $t0
LB $t1, 2($t0) # 2 simboliza o offset que é o 2 byte da word (0 - deve ser inserido) seria DD
LH $t2, 0($t0)
# A referência pode ser a que quisermos, podemos encontrar o BB por meio da n1, com um offset de 6

