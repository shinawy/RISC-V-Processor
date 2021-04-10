`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2020 02:04:15 AM
// Design Name: 
// Module Name: SingleMem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SingleMem(
input clk, 
input flag,
input MemRead, 
input MemWrite,
input [31:0] addr,
 input [31:0] data_in,
 input loadbyte,
loadhalf,
signedmem, 
output reg [31:0] data_out
    );

reg [7:0] mem [0:(128)];


initial begin
//    mem[0]=8'h33;
//    mem[1]=8'h0;
//    mem[2]=8'h0;
//    mem[3]=8'h0; // nop instruction addded to compensate for the clk initial behaviour
   
    {mem[3],mem[2],mem[1],mem[0]}=32'h00000033;
{mem[7],mem[6],mem[5],mem[4]}=32'h01900093
;
{mem[11],mem[10],mem[9],mem[8]}=32'h06400113
;
{mem[15],mem[14],mem[13],mem[12]}=32'h001101b3
;

{mem[19],mem[18],mem[17],mem[16]}=32'h00209193
;

{mem[23],mem[22],mem[21],mem[20]}=32'h00310863
;
{mem[27],mem[26],mem[25],mem[24]}=32'h04600293
;
{mem[31],mem[30],mem[29],mem[28]}=32'h405102b3
;
{mem[35],mem[34],mem[33],mem[32]}=32'h405282b3
;
{mem[39],mem[38],mem[37],mem[36]}=32'h00102023
;
{mem[43],mem[42],mem[41],mem[40]}=32'h00002303
;
{mem[47],mem[46],mem[45],mem[44]}=32'h0110000f
;
{mem[51],mem[50],mem[49],mem[48]}=32'h00a00313
;
{mem[55],mem[54],mem[53],mem[52]}=32'h00000073
;
{mem[59],mem[58],mem[57],mem[56]}=32'h06400393
;

  //$readmemh("test1R_Itype.mem", mem);
end

//wire [31:0] base;
//assign base=((((count/3)/4)*4)+8);
//reg [31:0] basereg;
//always@(*)begin 
//basereg=base;
//end
//initial begin 
//$readmemh("./DataMemInit.mem", mem,basereg);
//end

always @(*)begin

    if (flag)begin 
         data_out = {mem[addr+3],mem[addr+2],mem[addr+1], mem[addr]}; //modified and not sure if it is gonna work 
   end
    else if (MemWrite)
             //mem[addr] <= data_in;
             case({loadbyte,loadhalf})
             2'b10:mem[64+addr] <= data_in[7:0];
             2'b01:{mem[64+addr+1],mem[64+addr]} <= data_in[15:0]; //modified and not sure if it is gonna work 
             default: {mem[64+addr+3],mem[64+addr+2],mem[64+addr+1], mem[64+addr]} <= data_in; //modified and not sure if it is gonna work 
             endcase
     else if (MemRead)begin 
                     if (~signedmem)begin 
                     case({loadbyte,loadhalf})
                     2'b10:data_out ={{24{data_out[7]}},mem[64+addr]};
                     2'b01:data_out ={{16{data_out[15]}},mem[64+addr+1], mem[64+addr]};    //modified and not sure if it is gonna work 
                     default:data_out ={mem[64+addr+3],mem[64+addr+2],mem[64+addr+1], mem[64+addr]}; //modified and not sure if it is gonna work 
                     endcase
                     end    
             
                     else begin 
                     case({loadbyte,loadhalf})
                     2'b10:data_out ={24'b0,mem[64+addr]};
                     2'b01:data_out ={16'b0,mem[64+addr+1], mem[64+addr]};    //modified and not sure if it is gonna work 
                     default:data_out ={mem[64+addr+3],mem[64+addr+2],mem[64+addr+1], mem[64+addr]}; //modified and not sure if it is gonna work 
                     endcase
                     end    
                 
                 end
       else begin 
       data_out=0;
       end 

		

end

//always @(*)
//	begin 
//	//modified to handle how many bytes we are willing to store
//	if (MemWrite)
//	//mem[addr] <= data_in;
//	case({loadbyte,loadhalf})
//	2'b10:mem[base+addr] <= data_in[7:0];
//	2'b01:{mem[base+addr+1],mem[base+addr]} <= data_in[15:0]; //modified and not sure if it is gonna work 
//	default: {mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]} <= data_in; //modified and not sure if it is gonna work 
//	endcase

//end

////this is modified for load instructions

////assign data_out = MemRead ? mem[addr]:0;


//always @(*)begin 
//	if (MemRead)begin 
//		if (signedmem)begin 
//		case({loadbyte,loadhalf})
//		2'b10:data_out ={{24{data_out[7]}},mem[base+addr]};
//		2'b01:data_out ={{16{data_out[15]}},mem[base+addr+1], mem[base+addr]};    //modified and not sure if it is gonna work 
//		default:data_out ={mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]}; //modified and not sure if it is gonna work 
//		endcase
//		end	

//		else begin 
//		case({loadbyte,loadhalf})
//		2'b10:data_out ={24'b0,mem[base+addr]};
//		2'b01:data_out ={16'b0,mem[base+addr+1], mem[base+addr]};    //modified and not sure if it is gonna work 
//		default:data_out ={mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]}; //modified and not sure if it is gonna work 
//		endcase
//		end	
	
//	end


//end



    
  
    
endmodule
