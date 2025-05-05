.text
j MAIN

exemplo_folha:
addi $sp, $sp, -12    # aumenta a pilha em 3 itens
sw $t1, 8($sp)        # salva $t1
sw $t0, 4($sp)        # salva $t2
sw $s0, 0($sp)        # salva $s0

add $t0, $a0, $a1     # $to = g + h
add $t1, $a2, $a3     # $t1 = i + j
sub $s0, $t0, $t1     # $s0 = (g + h) - (i + j)
add $v0, $s0, $zero   # f = (g + h) - (i + j)

lw $s0, 0($sp)        # restaura $s0 original
lw $t0, 4($sp)        # restaura $t0 original
lw $t1, 8($sp)        # restaura $t1 original
addi $sp, $sp, 12     # diminui a pilha em 3 itens

jr $ra                # return f

MAIN:
addi $a0, $zero, 15
addi $a1, $zero, 25
addi $a2, $zero, 30
addi $a3, $zero, 5
jal exemplo_folha
add $t0, $v0, $zero