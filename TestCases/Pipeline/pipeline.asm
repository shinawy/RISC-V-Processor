.text 



addi x1,zero, 800 #x1=800+

addi x3,zero, 12 # x3=12
addi x2,zero, 12  #x2=12
add x0,x0,x0
add x0,x0,x0 
add x0,x0,x0 
sw x1,100(x2)       #check address[112] 0x00000320
add x0,x0,x0
add x0,x0,x0 
add x0,x0,x0 
lw x4,100(x2)       #check x4=800
add x0,x0,x0
add x0,x0,x0 
add x0,x0,x0 
beq x1,x4,label    # PC=56,60,64,68-> 88
add x0,x0,x0
add x0,x0,x0 
add x0,x0,x0 
sb x1,96(x2)       #check address[108]
lb x4,96(x2)       #check x4
sh x1,88(x2)       #check address[100]
lh x4,100(x2)       #check x4

label: 
add x2,x3,x3    #x2=24
add x0,x0,x0
add x0,x0,x0 
add x0,x0,x0 
sub x3,x1,x2    #x3=800-24



