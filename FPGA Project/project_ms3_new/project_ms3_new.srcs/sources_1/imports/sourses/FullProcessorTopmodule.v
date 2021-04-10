//`include "defines.v"
//`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////////

//// Create Date: 10/12/2020 03:52:55 PM
//// Design Name: 
//// Module Name: FullProcessorTopmodule
//// Project Name: MileStone2 
//// author: Mahmoud A Elshinawy created on Wednesday October 21th
////////////////////////////////////////////////////////////////////////////////////


//module FullProcessorTopmodule(input clk, input rst);

//wire [31:0] PC;


//wire [31:0] instr_mem_out;
//InstMem mod1(PC,instr_mem_out); //modified because memory now is byte addressable

//wire [31:0] first_adder_output;
//ripple0 mod2(PC, 32'd4,0,first_adder_output);

//wire Rtype,Branch, MemRead, MemtoReg,  MemWrite, ALUSrc,jal, RegWrite;
//wire [1:0] ALUOp;
//control_unit mod3 (instr_mem_out[6:2],Rtype,Branch, MemRead, MemtoReg,  MemWrite,
// ALUSrc, RegWrite,jal,ALUOp);
 
// wire [31:0] regfileout1, regfileout2, final_out;
// RegFile mod4(clk, rst,
// instr_mem_out[19:15],instr_mem_out[24:20], instr_mem_out[11:7],
// final_out, RegWrite, regfileout1, regfileout2);

//wire [31:0] immgen_out;
//rv32_ImmGen mod5(instr_mem_out, immgen_out);

//wire [31:0] secondALUin;
//muxarray mod6( regfileout2, immgen_out, ALUSrc, secondALUin);

//wire [3:0] ALU_selection; wire loadbyte,loadhalf,signedmem;
//ALU_control_unit mod7(ALUOp, instr_mem_out [14:12] , instr_mem_out [5], instr_mem_out [30], ALU_selection,
// loadbyte,loadhalf,signedmem);

//wire Zero,cf,vf,sf;
//wire [31:0] ALUout;

////handling the LUI and AUIPC instructions (modified)
//wire [31:0] firstALUin;
//wire [1:0] muxsel;
//assign muxsel={instr_mem_out[6:0]==7'b0110111,instr_mem_out[6:0]==7'b0010111};

//mux4 mod20(regfileout1,PC,32'd0,muxsel,firstALUin);

////End of handling LUI and AUIPC instructions




////modified to get to the prof's alu module

////ALU32bit mod8(
////regfileout1, secondALUin,
////ALU_selection,
////ALUout, Zero);

//prv32_ALU mod16(
//	firstALUin, secondALUin,
	
//	instr_mem_out[24:20],
//	ALUout,
//	cf, Zero, vf, sf,
//	ALU_selection, Rtype
//);

//wire [31:0] shift_out;
////shift_one mod9(immgen_out, shift_out);

////modified for the jal and jalr instructions
//wire [31:0] first_input_for_second_adder, second_input_for_the_second_adder;
//wire [31:0] second_adder_output;
//muxarray mod17( PC, regfileout1, instr_mem_out[6:2]==5'b11001, first_input_for_second_adder);
////muxarray mod18( shift_out, immgen_out, (instr_mem_out[6:2]==5'b11001), second_input_for_the_second_adder);

//ripple0 mod10(first_input_for_second_adder, immgen_out,0,second_adder_output);

//wire and_out;
//wire [2:0] branchsel;
//assign branchsel=instr_mem_out[14:12];
//// modified for the branch instructions
//assign and_out= Branch & (
//(Zero & (branchsel==3'b000))||
//(~Zero & (branchsel==3'b001))||
//((sf!=vf)&(branchsel==3'b100))||
//((sf==vf)&(branchsel==3'b101))||
//(~cf & (branchsel==3'b110))||
//(cf & (branchsel==3'b111))
//);
////assign and_out= 0;

////modified for the jal instruction
//wire or_out;
//assign or_out= and_out || jal; 

//wire[31:0] PCmux; 
//muxarray mod11( first_adder_output, second_adder_output, or_out, PCmux);
//Accumulativeflip mod14( PCmux, clk, rst,1,PC );

//wire [31:0] datamemout;
//DataMem mod12( clk, MemRead, MemWrite,
//ALUout, regfileout2,loadbyte,loadhalf,signedmem, datamemout);

////wire[31:0] before_final_out;
////muxarray mod13( ALUout, datamemout, MemtoReg, before_final_out);
////muxarray mod15( before_final_out, first_adder_output, jal, final_out); // modified to adapt the jal instructions 
//mux4 mod21(ALUout,first_adder_output,datamemout,{MemtoReg,jal},final_out);

//endmodule
