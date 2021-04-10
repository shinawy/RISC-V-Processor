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

reg [7:0] mem [0:(4*1024-1)];

integer file_faults;
integer scan_faults;

reg [7:0] data; // needs to be an "integral number of bytes in length"
reg [31:0] count=0;
//this initial block is to find out how many bytes are stoed for instructions
initial begin

  file_faults = $fopen("./test1R_Itype.mem", "r");
  if (file_faults == 0) begin
    $display("data_file handle was NULL");
  
  end
  while (!$feof(file_faults)) begin
    count=count+1;
    scan_faults = $fgets(data, file_faults); // arg order was wrong in original
    $display("scan_faults: %0d  data: %s", scan_faults, data);
    $display("count: %0d ", count);
  end
  $fclose(file_faults); // Close file before finish
 
end


//this initail block is to fill the memory with zeros
initial begin
   
    $readmemh("./DataMemInit.mem", mem);
end

//this initail block is to fill the memory with instructions
initial begin
    mem[0]=8'h33;
    mem[1]=8'h0;
    mem[2]=8'h0;
    mem[3]=8'h0; // nop instruction addded to compensate for the clk initial behaviour
    $readmemh("./test1R_Itype.mem", mem,4);
end

wire [31:0] base;
assign base=((((count/3)/4)*4)+8);
reg [31:0] basereg;
always@(*)begin 
basereg=base;
end
initial begin 
$readmemh("./DataMemInit.mem", mem,basereg);
end

always @(*)begin

    if (flag)begin 
         data_out = {mem[addr+3],mem[addr+2],mem[addr+1], mem[addr]}; //modified and not sure if it is gonna work 
   end
    else if (MemWrite)
             //mem[addr] <= data_in;
             case({loadbyte,loadhalf})
             2'b10:mem[base+addr] <= data_in[7:0];
             2'b01:{mem[base+addr+1],mem[base+addr]} <= data_in[15:0]; //modified and not sure if it is gonna work 
             default: {mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]} <= data_in; //modified and not sure if it is gonna work 
             endcase
     else if (MemRead)begin 
                     if (~signedmem)begin 
                     case({loadbyte,loadhalf})
                     2'b10:data_out ={{24{data_out[7]}},mem[base+addr]};
                     2'b01:data_out ={{16{data_out[15]}},mem[base+addr+1], mem[base+addr]};    //modified and not sure if it is gonna work 
                     default:data_out ={mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]}; //modified and not sure if it is gonna work 
                     endcase
                     end    
             
                     else begin 
                     case({loadbyte,loadhalf})
                     2'b10:data_out ={24'b0,mem[base+addr]};
                     2'b01:data_out ={16'b0,mem[base+addr+1], mem[base+addr]};    //modified and not sure if it is gonna work 
                     default:data_out ={mem[base+addr+3],mem[base+addr+2],mem[base+addr+1], mem[base+addr]}; //modified and not sure if it is gonna work 
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
