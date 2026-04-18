.data
frase1: .asciiz "Entre com um numero inteiro: "
frase2: .asciiz "\n O numero digitado foi: "

.text
# Imprime frase 1 na tela (se nao souber, ir em help -> syscall):
li $v0, 4 # Carrega o print string (4 eh string no syscall)
la $a0, frase1 # Endereco da frase entra em a (argument)

syscall # Print

# Lendo o número digitado
li $v0, 5 # Carrega o Read_Int
syscall
add $t1, $0, $v0 # Salva o valor em $t1

# Imprime a frase 2:

li $v0, 4 # Read_String
la $a0, frase2

syscall

# Imprime o valor digitado
li $v0, 1 # Print_Int
add $a0, $t1, $0 # Carrega o argumento
syscall



