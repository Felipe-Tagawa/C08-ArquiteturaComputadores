.data # Diretivas/Variáveis

.text # Intruções

# Primeiras Instruções: Tipo 'R' -> A Registrador ($ - 32 dólares)

# $t --> Registradores Temporários
# $s --> Registradores Salvos
# $zero ou $0 --> sempre zero

# ---------- Formato Geral ----------> Operação RegistradorDestino, RegistradorOrigem1, RegistradorOrigem2
# Exemplo:
add $t2, $t0, $t1
sub $t3, $t0, $t1
