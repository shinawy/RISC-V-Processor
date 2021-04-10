.text 



addi x1,zero,100  #x1=10
addi x2,zero,100  #x2=100
beq x1,x2, Ex1    #jump
addi x4,zero,-3 #x4 should not be updated

Ex1:
addi x3,zero,4  #x3=4
blt x3,x1, Ex2  #jump
addi x4,zero,-3 #x4 should not be updated


Ex2:
addi x3,zero,2 #x3=2
bne x3,x1,Ex3  #jump
addi x4,zero,-3 #x4 should not be updated

Ex3:
addi x3,zero,3 #x3=3
bge x1,x3,Ex4  #jump
addi x4,zero,-3 #x4 should not be updated

Ex4:
addi x5,zero,100  #x5=100

# PC order= 0 4 8 16 20 28 32 40 44 52