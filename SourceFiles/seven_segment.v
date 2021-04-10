
module BCD (
input [12:0] num,
//output reg [3:0] Thousands,
output reg [3:0] Hundreds,
output reg [3:0] Tens,
output reg [3:0] Ones
);
integer i;
always @(num)
begin
//initialization
//Thousands = 4'd0;
Hundreds = 4'd0;
Tens = 4'd0;
Ones = 4'd0;
for (i = 12; i >= 0 ; i = i-1 )
begin
//if(Thousands >= 5 )
//Thousands = Thousands + 3;
if(Hundreds >= 5 )
Hundreds = Hundreds + 3;
if (Tens >= 5 )
Tens = Tens + 3;
if (Ones >= 5)
Ones = Ones +3;
//Thousands = Thousands <<1;
//Thousands [0] = Hundreds [3];
Hundreds = Hundreds << 1;
Hundreds [0] = Tens [3];
Tens = Tens << 1;
Tens [0] = Ones[3];
Ones = Ones << 1;
Ones[0] = num[i];
end
end
endmodule

module negate_num(input [12:0] num//,output [12:0] out_num
);
//genvar i;
//generate

//for ( i=0; i<7;i=i+1)
//begin
//assign out_num[i]= ~num[i];

//end
//endgenerate
//assign out_num= out_num+ 8'd1;
assign num= ~num +12'd1;
endmodule


module BCD (
input [7:0] num,
//output reg [3:0] Thousands,
output reg [3:0] Hundreds,
output reg [3:0] Tens,
output reg [3:0] Ones
);
integer i;
always @(num)
begin
//initialization
//Thousands = 4'd0;
Hundreds = 4'd0;
Tens = 4'd0;
Ones = 4'd0;
for (i = 12; i >= 0 ; i = i-1 )
begin
//if(Thousands >= 5 )
//Thousands = Thousands + 3;
if(Hundreds >= 5 )
Hundreds = Hundreds + 3;
if (Tens >= 5 )
Tens = Tens + 3;
if (Ones >= 5)
Ones = Ones +3;
//Thousands = Thousands <<1;
//Thousands [0] = Hundreds [3];
Hundreds = Hundreds << 1;
Hundreds [0] = Tens [3];
Tens = Tens << 1;
Tens [0] = Ones[3];
Ones = Ones << 1;
Ones[0] = num[i];
end
end
endmodule

module negate_num(input [12:0] num//,output [12:0] out_num
);
//genvar i;
//generate

//for ( i=0; i<7;i=i+1)
//begin
//assign out_num[i]= ~num[i];

//end
//endgenerate
//assign out_num= out_num+ 8'd1;
assign num= ~num +12'd1;
endmodule

module Four_Digit_Seven_Segment_Driver_Optimized (
input clk,

input  [12:0] num,
output reg [3:0] Anode,
output reg [6:0] LED_out

);


  
reg [3:0] LED_BCD;
reg [19:0] refresh_counter = 0; // 20-bit counter
wire [1:0] LED_activating_counter;
//wire [12:0] num= 13'd2564;
wire [3:0] Thousands;
wire  [3:0] Hundreds;
wire [3:0] Tens;
wire  [3:0] One;
wire flag= num[12] & 1'b1;
wire [12:0] complement;
//reg [12:0] comp1;
assign complement= (~num) + 1;

wire [7:0] neg_num;

//always @(*)
//begin
//if (flag)
//begin
//assign comp1= ~num + 1;


//end

//end

always @( posedge clk )
begin
refresh_counter <= refresh_counter + 1;
end
assign LED_activating_counter = refresh_counter[19:18];
BCD I1((flag?complement:num), Hundreds, Tens, One);

//if (flag)
//begin
//negate_num(num[7:0], neg_num);
//BCD I1(neg_num, Thousands, Hundreds, Tens, One);
////assign Thousands=4'd15;
//end

//else begin
//BCD I1(num, Thousands, Hundreds, Tens, One);
//end

always @(*)
begin
case(LED_activating_counter)
2'b00: begin
Anode = 4'b0111;
if (flag)
begin
LED_BCD = 4'd15;
end
else begin
LED_BCD = 4'd0;
end

end
2'b01: begin
Anode = 4'b1011;
LED_BCD =Hundreds;
end
2'b10: begin
Anode = 4'b1101;
LED_BCD = Tens;
end
2'b11: begin
Anode = 4'b1110;
LED_BCD = One;
end
endcase
end
always @(*)
begin

case(LED_BCD)
4'b0000: LED_out = 7'b0000001; // "0"
4'b0001: LED_out = 7'b1001111; // "1"
4'b0010: LED_out = 7'b0010010; // "2"
4'b0011: LED_out = 7'b0000110; // "3"
4'b0100: LED_out = 7'b1001100; // "4"
4'b0101: LED_out = 7'b0100100; // "5"
4'b0110: LED_out = 7'b0100000; // "6"
4'b0111: LED_out = 7'b0001111; // "7"
4'b1000: LED_out = 7'b0000000; // "8"
4'b1001: LED_out = 7'b0000100; // "9"
default: LED_out = 7'b1111110; // "-"
endcase
end
endmodule

module Four_Digit_Seven_Segment_Driver (
input clk,
input [12:0] num,
output reg [3:0] Anode,
output reg [6:0] LED_out
);
//wire [12:0] num;
//assign num = 1357;
reg [3:0] LED_BCD;
reg [19:0] refresh_counter = 0; // 20-bit counter
wire [1:0] LED_activating_counter;
always @(posedge clk)
begin
refresh_counter <= refresh_counter + 1;
end
assign LED_activating_counter = refresh_counter[19:18];
always @(*)
begin
case(LED_activating_counter)
2'b00: begin
Anode = 4'b0111;
LED_BCD = num/1000;
end
2'b01: begin
Anode = 4'b1011;
LED_BCD = (num % 1000)/100;
end
2'b10: begin
Anode = 4'b1101;
LED_BCD = ((num % 1000)%100)/10;
end
2'b11: begin
Anode = 4'b1110;
LED_BCD = ((num % 1000)%100)%10;
end
endcase
end
always @(*)
begin
case(LED_BCD)
4'b0000: LED_out = 7'b0000001; // "0"
4'b0001: LED_out = 7'b1001111; // "1"
4'b0010: LED_out = 7'b0010010; // "2"
4'b0011: LED_out = 7'b0000110; // "3"
4'b0100: LED_out = 7'b1001100; // "4"
4'b0101: LED_out = 7'b0100100; // "5"
4'b0110: LED_out = 7'b0100000; // "6"
4'b0111: LED_out = 7'b0001111; // "7"
4'b1000: LED_out = 7'b0000000; // "8"
4'b1001: LED_out = 7'b0000100; // "9"
default: LED_out = 7'b0000001; // "0"
endcase
end
endmodule