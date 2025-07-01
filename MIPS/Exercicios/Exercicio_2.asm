# Escreva um procedimento em assembler de MIPS que retorne o valor máximo dentre dois números inteiros
# sem sinal passados como parâmetro. Use os registradores $a0 e $a1 para passagem de parâmetros de entrada
# e o registrador $v0 como seu registrador para retorno da função.

inicio:
	slt  $t0, $a0, $a1        
	bnq  $t0, $zero, a1Maior
	move $v0, $a0
	j    end

a1Maior:
	move $v0, $a1

end:
	jr   $ra