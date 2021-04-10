.text 

addi x1,x0,12
addi x2,x0,14
addi x3,x0,2
sub x4,x2,x3
beq x1,x4,label
addi x6,x0,25
add x6,x6,x6

label:
sw x4, 0(x2)
fence 1,1
lw x6,0(x2)
ebreak
sw x2,0(x4)
ecall 
addi x7,x0,90
addi x8,x0,90
addi x9,x0,90