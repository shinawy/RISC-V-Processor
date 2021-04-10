.text 



addi x1,zero,4
addi x2,zero,3
beq x0,x0, EXECUTE
lw x1, 0(zero)

EXECUTE:
add x3,x1,x2
sub x4,x2,x3