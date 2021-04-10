`include "C:/Users/CSE.CAL/Desktop/MarawanMahmoud/Lec_Project_Code_rules/MileStone 3/MileStone 3.srcs/sources_1/new/defines2.v"
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// Create Date: 10/12/2020 03:52:55 PM
// Design Name: 
// Module Name: FullProcessorTopmodule
// Project Name: MileStone2 
// author: Mahmoud A Elshinawy created on Wednesday October 21th
//////////////////////////////////////////////////////////////////////////////////


module FullProcessorPipelined(input clk, input rst);
wire [31:0] PC;

wire slowerclk;
//wire [31:0] instr_mem_out;
wire [31:0] instr_mem_out_updated;
//InstMem mod1(PC,instr_mem_out);

wire [31:0] IF_ID_PC,IF_ID_instrmemout;
wire MEM_WB_RegWrite;
wire EX_MEM_Zero, EX_MEM_RegWrite,EX_MEM_jal;
wire [4:0] ID_EX_instrmemout11_7;
//wire stall;
wire ID_EX_Rtype,ID_EX_Branch, ID_EX_MemRead, ID_EX_MemtoReg,  ID_EX_MemWrite;
wire or_out;
wire [31:0] datamemout;

clkdivider slowclk(clk,slowerclk);
//assign instr_mem_out= datamemout;
wire ebreak,fence;

reg ecall;
initial begin 
ecall=0; 
end
always@(*)begin 

if ((datamemout[6:0]==7'b1110011) && (datamemout[20]==0))
    ecall=1;



end

assign ebreak=(datamemout[6:0]==7'b1110011) && (datamemout[20]==1);
assign fence=(datamemout[6:0]==7'b0001111);
//assign ecall=((datamemout[6:0]==7'b1110011) && (datamemout[20]==0))?1:0;
muxarray mux_before_ifid(datamemout,32'b0000000_00000_00000_000_00000_0110011,(ebreak||fence),instr_mem_out_updated);
Accumulativeflip #(64)
 IF_ID( {PC,instr_mem_out_updated}, ~slowerclk, rst,1,{IF_ID_PC,IF_ID_instrmemout} );
wire [31:0] first_adder_output;
ripple0 mod2(PC, 32'd4,0,first_adder_output);

//wire Branch, MemRead, MemtoReg,  MemWrite, ALUSrc, RegWrite;

wire Rtype,Branch, MemRead,MemtoReg,  MemWrite, ALUSrc,jal, RegWrite;
wire [1:0] ALUOp;

control_unit mod3 (IF_ID_instrmemout [6:2],Rtype,Branch, MemRead, MemtoReg,  MemWrite,
 ALUSrc, RegWrite,jal,ALUOp);
 
 wire [9:0] control_signals={Rtype,Branch, MemRead, MemtoReg,  MemWrite, ALUSrc, RegWrite,jal,ALUOp};
 wire [9:0] updated_signals;
 
 muxarray #(10) control_unitmux(control_signals,10'b0, or_out,updated_signals); 
 
 
 
 wire[4:0] ID_EX_Rs1,  ID_EX_Rs2;
 wire [31:0] regfileout1, regfileout2, final_out;
 wire [4:0] MEM_WB_instrmemout11_7;
 RegFile mod4(~clk, rst,
 IF_ID_instrmemout[19:15],IF_ID_instrmemout[24:20], MEM_WB_instrmemout11_7,
 final_out, MEM_WB_RegWrite, regfileout1, regfileout2);
 //correct regwrite port

wire [31:0] immgen_out;
rv32_ImmGen mod5(IF_ID_instrmemout, immgen_out);

wire ID_EX_ALUSrc, ID_EX_RegWrite, ID_EX_jal;
wire [1:0] ID_EX_ALUOp;
wire [31:0] ID_EX_PC;
wire [31:0]  ID_EX_regfileout1,  ID_EX_regfileout2, ID_EX_immgen_out;
wire[3:0] ID_EX_instrmemout30_14;

wire [6:0] op_code; //instr[6:0]
wire [4:0] shamt;  //instr [24:20]
//should be 155 bits
//readreg1 and readreg2
Accumulativeflip #(169)
 ID_EX( {updated_signals,IF_ID_PC,regfileout1, regfileout2, 
 immgen_out,IF_ID_instrmemout[30],IF_ID_instrmemout[14:12],
 IF_ID_instrmemout[11:7],IF_ID_instrmemout[6:0],IF_ID_instrmemout[24:20],IF_ID_instrmemout[19:15],IF_ID_instrmemout[24:20]},
  slowerclk, rst,1,
  {ID_EX_Rtype,ID_EX_Branch, ID_EX_MemRead, ID_EX_MemtoReg,  ID_EX_MemWrite,
   ID_EX_ALUSrc, ID_EX_RegWrite, ID_EX_jal, ID_EX_ALUOp,ID_EX_PC,ID_EX_regfileout1,
     ID_EX_regfileout2,ID_EX_immgen_out,ID_EX_instrmemout30_14,
     ID_EX_instrmemout11_7, op_code, shamt,ID_EX_Rs1,  ID_EX_Rs2}     
  );
  
  
//  HazardUnit hazard_detect(
//   IF_ID_instrmemout[19:15],
//   IF_ID_instrmemout[24:20],
//    ID_EX_instrmemout11_7,
//    ID_EX_MemRead, 
//    stall);
wire [4:0] EX_MEM_instrmemout11_7;
wire  forwardA, forwardB;
ForwardingUnit forward( MEM_WB_RegWrite,
EX_MEM_instrmemout11_7, ID_EX_Rs1,  ID_EX_Rs2,MEM_WB_instrmemout11_7,
forwardA,  forwardB );

wire [31:0] EX_MEM_ALUout;
wire[31:0] beforesecondALUin;
wire [31:0] secondALUin;
muxarray beforeALU2(ID_EX_regfileout2,final_out,forwardB,beforesecondALUin);
muxarray mod6( beforesecondALUin, ID_EX_immgen_out, ID_EX_ALUSrc, secondALUin);

wire [3:0] ALU_selection;
wire loadbyte;
wire loadhalf,signedmem;
ALU_control_unit mod7(ID_EX_ALUOp, ID_EX_instrmemout30_14 [2:0] , op_code[5],
ID_EX_instrmemout30_14 [3], ALU_selection, loadbyte,loadhalf,signedmem);

//handling the LUI and AUIPC instructions (modified)
wire [31:0] beforefirstALUin,firstALUin;
wire [1:0] muxsel;
assign muxsel={op_code ==7'b0110111,op_code ==7'b0010111};
mux4 beforefirst(ID_EX_regfileout1,ID_EX_PC,32'd0,muxsel,beforefirstALUin);
muxarray mod20(beforefirstALUin,final_out,{(muxsel==2 ||muxsel==1)?0:forwardA},firstALUin);

//End of handling LUI and AUIPC instructions


wire Zero,cf,vf,sf;
wire [31:0] ALUout;
prv32_ALU mod16(
	firstALUin, secondALUin,
	
	shamt,
	ALUout,
	cf, Zero, vf, sf,
	ALU_selection, ID_EX_Rtype
);

//wire [31:0] shift_out;
//modified for the jal and jalr instructions
wire [31:0] first_input_for_second_adder;
wire [31:0] second_adder_output;
muxarray mod17(ID_EX_PC, ID_EX_regfileout1, op_code[6:2]==5'b11001, first_input_for_second_adder);
//muxarray mod18( shift_out, immgen_out, (instr_mem_out[6:2]==5'b11001), second_input_for_the_second_adder);

ripple0 mod10(first_input_for_second_adder, ID_EX_immgen_out,0,second_adder_output);



   
  wire [8:0] ID_EX_signals={ID_EX_Branch, ID_EX_MemRead, ID_EX_MemtoReg,  ID_EX_MemWrite,
       ID_EX_RegWrite, loadbyte,loadhalf,signedmem,ID_EX_jal};
       
      wire [8:0] ID_EX_updated_signals;
      muxarray #(9) before_EX_MEM_signals(ID_EX_signals,0,or_out,ID_EX_updated_signals);

//here the EX_MEM reg
wire EX_MEM_Branch, EX_MEM_MemRead, EX_MEM_MemtoReg,  EX_MEM_MemWrite,
 
  EX_MEM_loadbyte,EX_MEM_loadhalf,EX_MEM_signedmem,
  EX_MEM_cf, EX_MEM_vf, EX_MEM_sf;
wire [31:0] EX_MEM_second_adder_output,
EX_MEM_regfileout2;

wire [2:0] func3; //instr[14:12]
wire [31:0] EX_MEM_PC;
Accumulativeflip #(149)
 EX_MEM( {ID_EX_updated_signals[8:4],ID_EX_PC,second_adder_output,Zero,ALUout,beforesecondALUin,
 ID_EX_instrmemout11_7,ID_EX_updated_signals[3:1],
  ID_EX_instrmemout30_14[2:0],ID_EX_updated_signals[0],cf, vf, sf},
  ~slowerclk, rst,1,
  {EX_MEM_Branch, EX_MEM_MemRead, EX_MEM_MemtoReg,  EX_MEM_MemWrite,
   EX_MEM_RegWrite,EX_MEM_PC,EX_MEM_second_adder_output, EX_MEM_Zero,EX_MEM_ALUout,
   EX_MEM_regfileout2,EX_MEM_instrmemout11_7,
    EX_MEM_loadbyte,EX_MEM_loadhalf,EX_MEM_signedmem, func3, EX_MEM_jal,
     EX_MEM_cf, EX_MEM_vf, EX_MEM_sf}     
  );





wire and_out;
wire [2:0] branchsel;
assign branchsel=func3;
assign and_out= EX_MEM_Branch & (
(EX_MEM_Zero & (branchsel==3'b000))||
(~EX_MEM_Zero & (branchsel==3'b001))||
((EX_MEM_sf!=EX_MEM_vf)&(branchsel==3'b100))||
((EX_MEM_sf==EX_MEM_vf)&(branchsel==3'b101))||
(~EX_MEM_cf & (branchsel==3'b110))||
(EX_MEM_cf & (branchsel==3'b111))
);

assign or_out= and_out || EX_MEM_jal; 


wire[31:0] PCmux; 
muxarray mod11( first_adder_output, EX_MEM_second_adder_output, or_out, PCmux);
Accumulativeflip mod14( PCmux, slowerclk, rst,~ecall,PC );



SingleMem mod12( clk,slowerclk==1, EX_MEM_MemRead, EX_MEM_MemWrite,
(slowerclk?PC:EX_MEM_ALUout), EX_MEM_regfileout2, EX_MEM_loadbyte,EX_MEM_loadhalf,EX_MEM_signedmem, datamemout);


//here comes the MEM_WB reg
wire MEM_WB_MemtoReg;
wire [31:0]MEM_WB_datamemout, MEM_WB_ALUout, MEM_WB_PC;
wire MEM_WB_jal;
Accumulativeflip #(104)
 MEM_WB( 
 {EX_MEM_PC,EX_MEM_MemtoReg,EX_MEM_RegWrite,datamemout,
 EX_MEM_ALUout,EX_MEM_instrmemout11_7,EX_MEM_jal},
  slowerclk, rst,1,
  {MEM_WB_PC,MEM_WB_MemtoReg,MEM_WB_RegWrite,MEM_WB_datamemout,
   MEM_WB_ALUout,MEM_WB_instrmemout11_7,MEM_WB_jal}     
  );



mux4 mod21( MEM_WB_ALUout, MEM_WB_PC +4, MEM_WB_datamemout, {MEM_WB_MemtoReg,MEM_WB_jal}, final_out);
endmodule
