sub $v0, $v0, $v0              # Inicializa o contador
sub $v1, $v1, $v1              # Inicializa a variável intermediária entre a origem e o destino
sub $t0, $t0, $t0              # Inicializa um ponteiro para $a0
sub $t1, $t1, $t1              # Inicializa um ponteiro para $a1

addi $t0, $a0, 0               # $t0 passa a apontar para $a0
addi $t1, $a1, 0               # $t1 passa a apontar para $a1

loop: 
      lw $v1, 0($t0)           # $v1 recebe o valor apontado por $t0
      beq $v1, $zero, end      # Vá para o fim se o valor acessado for zero.
      sw $v1, 0($t1)           # Guarda o valor no endereço apontado por $t1
      addi $t3, $t3, 4         # Índice vai para a próxima palavra
      add $t0, $a0, $t3        # $t0 aponta para a próxima palavra.
      add $t1, $a1, $t3        # $t1 aponta para a próxima palavra.
      j loop
      
end:                           # Fim