.text 



addi x1,zero, 800 #x1=800+
addi x2,zero, 12  #x2=12

sw x1,100(x2)       #check address[112] 0x00000320
lw x4,100(x2)       #check x4=800000

sb x1,96(x2)       #check address[108]
lb x4,96(x2)       #check x4

sh x1,88(x2)       #check address[100]
lh x4,100(x2)       #check x4

