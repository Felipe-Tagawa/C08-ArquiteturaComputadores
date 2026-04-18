.data
frase1: .asciiz "Digite o primeiro valor (A): "
frase2: .asciiz "Digite o segundo valor (B): "
frase3: .asciiz "Digite o terceiro valor (C): "
frase4: .asciiz "Digite o quarto valor (D): "
frase5: .asciiz "\nResultado X = (A-B) + (C-D): "

.text

# --- Leitura de A ---
la $a0, frase1
jal imprime
li $v0, 5
syscall
move $t0, $v0        # $t0 = A

# --- Leitura de B ---
la $a0, frase2
jal imprime
li $v0, 5
syscall
move $t1, $v0        # $t1 = B

# --- Leitura de C ---
la $a0, frase3
jal imprime
li $v0, 5
syscall
move $t2, $v0        # $t2 = C

# --- Leitura de D ---
la $a0, frase4
jal imprime
li $v0, 5
syscall              # Primeiro o syscall de leitura...
move $t3, $v0        # ...depois move o valor de $v0 para $t3

# --- Cálculos ---
sub $t4, $t0, $t1   
sub $t5, $t2, $t3    
add $t6, $t4, $t5    

# --- Exibição do Resultado ---
la $a0, frase5
jal imprime

li $v0, 1            # Print_Int
move $a0, $t6
syscall

# --- Finalização ---
li $v0, 10
syscall

# --- Função Auxiliar ---
imprime: 
    li $v0, 4
    syscall
    jr $ra