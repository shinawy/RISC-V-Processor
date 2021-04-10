// file: instrMemory.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module InstMem (
    input [31:0] addr,
 output [31:0] data_out);
reg [7:0] mem [0:(4*1024-1)];

integer file_faults;
integer scan_faults;

reg [7:0] data; // needs to be an "integral number of bytes in length"
reg [31:0] count=0;
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

initial begin
    mem[0]=8'h0;
    mem[1]=8'h0;
    mem[2]=8'h0;
    mem[3]=8'h33; // nop instruction addded to compensate for the clk initial behaviour
    $readmemh("./test1R_Itype.mem", mem,4);
    //mem[0]=8'b00000000;
    //mem[1]=8'b00000000;
    //mem[2]=8'b00100011;
    //mem[3]=8'b00000011;
    //mem[4]=8'b00000000;
    //mem[5]=8'b01000000;
    //mem[6]=8'b00100011;
    //mem[7]=8'b10000011;
    //mem[8]=8'b00000000;
    //mem[9]=8'b10000000;
    //mem[10]=8'b00101110;
    //mem[11]=8'b00000011;
    //mem[12]=8'b00000000;
    //mem[13]=8'b01110011;
    //mem[14]=8'b01011110;
    //mem[15]=8'b10110011;
end

wire [31:0] base;
assign base=((((count/3)/4)*4)+8);

assign data_out = {mem[addr],mem[addr+1],mem[addr+2], mem[addr+3]}; //modified and not sure if it is gonna work 
endmodule

// this module was created for the sake of testing and will be deleted when done
//module InstMem (input [5:0] addr, output [31:0] data_out);
//reg [31:0] mem [0:(4*1024-1)];
//initial begin
//// $readmemh("./test1.bin", mem);
//mem[0]=00000000;
//mem[1]=00000000;
//mem[2]=00100011;
//mem[3]=00000011;
//mem[4]=00000000;
//mem[5]=01000000;
//mem[6]=00100011;
//mem[7]=10000011;
//mem[8]=00000000;
//mem[9]=10000000;
//mem[10]=00101110;
//mem[11]=00000011;
//mem[12]=00000000;
//mem[13]=01110011;
//mem[14]=01011110;
//mem[15]=10110011;
//end
//assign data_out = {mem[addr],mem[addr+1],mem[addr+2], mem[addr+3]}; //modified and not sure if it is gonna work 
//endmodule