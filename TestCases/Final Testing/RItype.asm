.text 
addi x6,x0,7  #x6=7
addi x5,x0,19  #x5=19
addi x13,x5,1   #x13=20 
slti x1,x5,-17  #x1=0
sltiu x2,x5,-17 #x2=1
xori x4,x6,25   #x4=30
ori x4,x4,25    #x4=31
andi x5,x4,24    #x5=24
slli x5,x5,2     #x5=96
srli x6,x5,4     #x6=6
addi x13,x0, 1000 #x13=1000
srai x14,x13,4      #x6=negativeNumber
add x7,x2,x6     #x7=7
sub x6,x7,x4    #x6=-24
sub x6,x4,x7    #x6=24
addi x7,x0,2   #x7=2
sll x8, x7,x7 #x8=8
slt x9,x7,x8  #x9=1
addi x7,x0,-10 #x7=-10
sltu x10,x8,x7  #x10=1
slt x10,x8,x7  #x10=0
xor x11,x8,x6  #x11=16
addi x7,x0,2   #x7=2
srl x11,x11,x7  #x11=4
or x11,x7,x11   #x11=6
and x11,x11,x7  #x11=2 
 
