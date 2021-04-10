.text 



addi x1,zero, 10 #x1=10
addi x2,zero, 9  #x2=9
lui x4,10000    #x4=40960000
auipc x5,10000  #x5=409600012

jal x3, Label1      #jump  and x3=24
addi x4,zero,4      #x4 should not be updated

Label1:
add x6,x2,x3  #x6=33
addi x2,x6,1   #x2=34
jalr x3,x1,34     #jump and x3=40
addi x6,zero,100      #x6 should not be updated


Label2:
addi x4,zero,100       #x4=100
