


.text
j MAIN

SUB:
	sub  $v0, $a0, $a1    # Subtrai os dois valores passados como entrada e guarda no registrador de saída
	jr   $ra              # Retorna $v0

COMPARE:
	addi $sp, $sp, -4     # Cria uma pilha para armazenar temporariamente os valores a serem comparados
	sw   $ra, 0($sp)      # Salva o contexto de execução ($ra)
	add  $a0, $a0, $zero  # O parâmetro $a0 recebe a variável $a0 na execução.
	add  $a1, #a1, $zero  # O parâmetro $a1 recebe a variável $a1 na execução.
	jal  SUB
	slt  $t0, $v0, $zero  # $t0 = ($v0 < 0)
	beq  $t0, $zero, TRUE # $t0 >= 0, vai para TRUE
	addi $t0, $zero, -1   # 
TRUE:
	addi $v0, $t0, 1      # $v0 = 1
	lw   $ra, 0($sp)      # Retorna o contexto de execução ($ra)
	addi $sp, $sp, 4      
	jr   $ra              # retorna $v0

SET_ARRAY:
	addi $sp, $sp, -44    # Cria uma pilha para armazena temporariamente os valores a serem guardados no vetor.
	sw   $ra, 0($ra)      # Guarda o contexto de execução
	add  $s0, $sp, $zero  # $s0 = &array[0]
	sub  $t0, $t0, $t0    # inicializa $t0
FOR:
	add  $a1, $t0, $zero  # parâmetro b = variável i

	jal COMPARE

	sll  $t1, $t0, 2      # $t1 = 4*$t0  (passa a conter 4 bits)
	add  $t1, $s0, $r1
	sw   $v0, 0($t1)
	addi $t0, $t0, 1
	slti $t1, $t0, 10
	bne  $t1, $zero, FOR

	lw $ra, 40($sp)
	addi $sp, $sp, 44
	jr $ra

MAIN:
	addi $a0, $zero, 32
	jal SET_ARRAY