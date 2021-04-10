.text 



addi x1,zero, 10 #x1=10
addi x2,zero, 9  #x2=100
lui x4,10000    #x4=40960000
auipc x5,10000  #x5=409600012

jal x3, Label1      #jump  and x3=20
addi x4,zero,4      #x4 should not be updated

Label1:
addi x2,x2,1   #x2=10
jalr x3,x1,26     #jump and x3=32
addi x6,zero,100      #x6 should not be updated


Label2:
addi x4,zero,100       #x4=100

