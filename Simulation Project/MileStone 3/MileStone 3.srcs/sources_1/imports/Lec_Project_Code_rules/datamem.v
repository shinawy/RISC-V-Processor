// file: datamem.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module DataMem
(
	input clk, 
input MemRead, 
input MemWrite,
input [31:0] addr,
 input [31:0] data_in,
 input loadbyte,
loadhalf,
signedmem, 
output reg [31:0] data_out);
reg [7:0] mem [0:(4*1024-1)];

//this is for store instruction
always @(posedge clk)
	begin 
	//modified to handle how many bytes we are willing to store
	if (MemWrite)
	//mem[addr] <= data_in;
	case({loadbyte,loadhalf})
	2'b10:mem[addr] <= data_in[7:0];
	2'b01:{mem[addr+1],mem[addr]} <= data_in[15:0]; //modified and not sure if it is gonna work 
	default: {mem[addr+3],mem[addr+2],mem[addr+1], mem[addr]} <= data_in; //modified and not sure if it is gonna work 
	endcase

end

//this is modified for load instructions

//assign data_out = MemRead ? mem[addr]:0;


always @(*)begin 
	if (MemRead)begin 
		if (signedmem)begin 
		case({loadbyte,loadhalf})
		2'b10:data_out ={{24{data_out[7]}},mem[addr]};
		2'b01:data_out ={{16{data_out[15]}},mem[addr+1], mem[addr]};    //modified and not sure if it is gonna work 
		default:data_out ={mem[addr+3],mem[addr+2],mem[addr+1], mem[addr]}; //modified and not sure if it is gonna work 
		endcase
		end	

		else begin 
		case({loadbyte,loadhalf})
		2'b10:data_out ={24'b0,mem[addr]};
		2'b01:data_out ={16'b0,mem[addr+1], mem[addr]};    //modified and not sure if it is gonna work 
		default:data_out ={mem[addr+3],mem[addr+2],mem[addr+1], mem[addr]}; //modified and not sure if it is gonna work 
		endcase
		end	
	
	end


end


initial begin
	mem[0]=8'b00000000;
	mem[1]=8'b00000000;
	mem[2]=8'b00000000;
	mem[3]=8'b00001010;
	mem[4]=8'b00000000;
	mem[5]=8'b00000000;
	mem[6]=8'b00000000;
	mem[7]=8'b00000001;
	mem[8]=8'b11111111;
	mem[9]=8'b11111111;
	mem[10]=8'b11111111;
	mem[11]=8'b11111110;
	//mem[3]=8'd17;
	//mem[4]=8'd9;
	//mem[5]=8'd25;
end
endmodule