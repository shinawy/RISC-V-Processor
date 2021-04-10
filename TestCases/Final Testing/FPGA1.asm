.text 

addi x1,x0,25    #x1=25
addi x2,x0,100    #x2=100 
add x3,x2,x1   # x3=125
slli x3,x1,2   #x3=100
beq x2,x3, label   #it should jump 
addi x5,x0,70 
sub x5,x2,x5 
sub x5,x5,x5 

label: 
sw x1,0(x0)    
lw x6, 0(x0)  #x6=25
fence 1,1 
addi x6,x0,10   #x6=10
ecall 
addi x7,x0,100  #x7 should not be updateds



