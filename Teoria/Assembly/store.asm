.data

n1: .byte 0x10
n2: .byte 0x20
m: .byte 0x00

.text
lb $t1, n1
lb $t2, n2

add $t3, $t1, $t2

sb $t3, m

li $t1 0x10010000
li $t2, 0xCAFE

sh $t2, 8($t1) # Mover o Cafe para 0x10010008