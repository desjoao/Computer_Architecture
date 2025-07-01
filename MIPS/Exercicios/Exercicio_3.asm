# Escreva um procedimento em assembler MIPS que retorne o valor mínimo dentre dois números
# inteiros sem sinal passados como parâmetro. Use os registradores $a0 e $a1 para passagem 
# de parâmetros de entrada e o registrador $v0 como seu registrador para retorno da função.

inicio:
	slt  $t0, $a0, $a1
	beq  $t0, $zero, a1Menor
	move $v0, $a0
	j end

a0Menor:
	move $v0, $a1

end:
	jr   $ra