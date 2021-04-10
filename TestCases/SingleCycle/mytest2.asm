.text 



addi x1,zero,100  #x1=10
addi x2,zero,2  #x2=2
addi x4,zero,-3 #x4=-3
sll x3,x1,x2   #x3=400
slli x4,x1,2   #x4=400
srl x5,x1,x2 #x5=25
srli x4,x1,2 #x4=25
slti x5,x2,4 #x5=1
slti x5,x1,4 #x5=0
slt x4,x2,x1 #x4=1
slt x4,x1,x0 #x4=0
sltiu x5,x2,-3 #x5=1
sltu x4,x2,x4 #x4=1