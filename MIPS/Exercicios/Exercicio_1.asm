# Dado que o registrador $s0 possui um ponto flutuante no padrão IEEE 754 com precisão simples,
# escreva a sequência de instruções MIPS capaz de extrair o expoente deste número e transformá-lo
# em um inteiro com sinal em complemento de dois.

sll  $s0, $s0, 1        # Move um bit para a esquerda (retirando o sinal)
srl  $s0, $s0, 24       # Move 24 bits para a direita (mantendo apenas os 8 bits mais significativos do valor anterior).
addi $s0, $zero, -127   # Remove o viés do expoente