.text
j MAIN

Fatorial:
addi $sp, $sp, -16
sw   $fp, 12($sp)
sw   $ra, 8($sp)
sw   $a0, 4($sp)
sw   $t0, 0($sp)
addi $fp, $sp, 16

addi $v0, $zero, 1
beq  $a0, $zero, OUT
add  $t0, $a0, $zero
addi $a0, $a0, -1
jal Fatorial

mul  $v0, $t0, $v0    # fat = n * Fatorial(n-1)

OUT:
lw   $t0, 0($sp)
lw   $a0, 4($sp)
lw   $ra, 8($sp)
lw   $fp, 12($sp)
addi $sp, $sp, 16
jr   $ra              # retorna o fatorial

MAIN:
addi $a0, $zero, 5    # exemplo, 5!
jal  Fatorial
add  $t0, $v0, $zero

