//addi x1,zero, 10 #x1=10
//addi x2,zero, 9  #x2=9
//lui x4,10000    #x4=40960000
//auipc x5,10000  #x5=409600012
//jal x3, Label1      #jump  and x3=24
//addi x4,zero,4      #x4 should not be updated
/////add x6,x2,x3  #x6=33
//addi x2,x6,1   #x2=34
//jalr x3,x1,34     #jump and x3=40
//addi x6,zero,100      #x6 should not be updated
/////addi x4,zero,100       #x4=100
//addi x5,x0,19  #x5=19
//addi x13,x5,1   #x13=20 
//slti x1,x5,-17  #x1=0
//beq x1,x0,label3    #the code should branch
//addi x4,zero,4      #x4 should not be updated
//////sltiu x2,x5,-17 #x2=1
//xori x4,x6,25   #x4=56
//ori x4,x4,25    #x4=57
//andi x5,x4,24    #x5=24
//bne x5,x4,label4
//addi x4,zero,4      #x4 should not be updated 
/////slli x5,x5,2     #x5=96
//srli x6,x5,4     #x6=6
//add x7,x2,x6     #x7=7
//sub x6,x7,x4    #x6=-50
//bltu x7,x6,label5 
//addi x4,zero,4      #x4 should not be updated 
/////addi x1,x0,10
//sw x1,0(x1)
//lw x4,0(x1)
//addi x2,x0,1234
//addi x5,x0,16
//sb x2,0(x5)
//lb x2,0(x5)
//blt x6,x7, label6
//addi x4,zero,4      #x4 should not be updated
/////addi x7,x0,2   #x7=2
//sll x8, x7,x7 #x8=8
//slt x9,x7,x8  #x9=1
//addi x7,x0,-10 #x7=-10
//bgeu x7,x9,label7
//addi x4,zero,4      #x4 should not be updated
/////sltu x10,x8,x7  #x10=1
//slt x10,x8,x7  #x10=0
//xor x11,x8,x6  #x11=-58
//addi x7,x0,2   #x7=2
//bgt x7,x10,label8
//addi x4,zero,4      #x4 should not be updated
/////srl x11,x11,x7  #x11=4
//or x11,x7,x11   #x11=6
//and x11,x11,x7  #x11=2 
//addi x3,x0,1234
//addi x5,x0,20
//sh x3,0(x5)
//lh x3,0(x5)
//fence 1,1
//addi x6,x0,1234
//addi x5,x0,16
//sb x6,0(x5)
//lbu x7,0(x5)
//ebreak
//addi x13,x0,13
//ecall 
//addi x12,x13,9 #x12 shouldnot be updated
//addi x4,x0,4  #x4 should not be updated