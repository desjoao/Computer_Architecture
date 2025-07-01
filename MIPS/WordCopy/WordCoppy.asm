# O programa a seguir copia palavras no registrador $a0 para o endereço no registrador $a1,
# contando o número de palavras copiadas no registrador $v0. O programa termina de copiar
# quando encontra uma palavra igual a 0. A palavra de término deve ser copiada mas não contada.

	move $v0, $zero                # Inicialização do contador -> $v0 = 0
	lw   $t0, 0($a0)               # Carrega em $t0 a primeira palavra de $a0
	beq  $t0, $zero, end           # Se a palavra carregada for vazia, vai para o fim.

loop:
	sw   $t0, 0($a1)               # Salva a palavra carregada em $a1.
	addi $a0, $a0, 4               # Anda uma palavra no endereço de $a0.
	addi $a1, $a1, 4               # Anda uma palavra no endereço de $a1.
	lw   $t0, 0($a0)               # Carrega a próxima palavra guardada em $a0.
	beq  $t0, $zero, end           # Vai para o fim caso $t0 = 0.
	addi $v0, $v0, 1               # Incrementa um no contador.
	j loop
end:
	jr $ra                         # Retorna o contador com todas as palavras copiadas menos a última.

