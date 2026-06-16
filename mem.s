ADDIU $1, $0, 0x10
ADDIU $2, $0, 0x20
ADDIU $3, $0, 0x30
ADDU $4, $2, $3
SW $4, 8($1)
SUBU $5, $3, $1
LW $6, 8($1)
ADDU $7, $6, $5
SW $7, 16($3)
