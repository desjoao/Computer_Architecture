# Escreva um procedimento em assembler de MIPS que retorne o módulo de um número
# com sinal. Use o registrador $a0 como seu parâmetro de entrada e o registrador $v0
# como seu registrador para retorno da função.

inicio:
	slt $t0, $a0, $zero
	beq $t0, $zero, fim

	sub $v0, $zero, $a0
	jr   $ra

fim:
	move $v0, $a0
	jr   $ra