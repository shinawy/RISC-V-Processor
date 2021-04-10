// file: ALU_control_unit.v
// author: Mahmoud A Elshinawy created on Wednesday October 21th

`timescale 1ns/1ns

module ALU_control_unit(
  input [1:0] ALUOp,
 input [2:0] instr14_12,
 input instr_6,
 input instr30, 
output reg [3:0] ALU_selection,
 
 output reg loadbyte,
 loadhalf,
 signedmem);

always @(*) begin 
      case (ALUOp)
              2'b00: ALU_selection=4'b0000;
              2'b01: ALU_selection=4'b0001;
              2'b10:
                      begin 
                      if (instr14_12== 3'b000) begin 

                      if (instr_6==0) begin ALU_selection=4'b0000; end 
                      else begin 
                        if (instr30==0)begin 
                        ALU_selection=4'b0000; //modified to keep track of the prv_alu
                        end
                        else begin
                        ALU_selection=4'b0001;
                        end


                      end




                      end 


                      if (instr14_12== 3'b001) begin 
                      
                        ALU_selection=4'b1000;  //modified

                      end 

                      if (instr14_12== 3'b010) begin 
                      
                        ALU_selection=4'b1101;  //modified

                      end

                      if (instr14_12== 3'b011) begin 
                      
                        ALU_selection=4'b1111;  //modified

                      end

                      if (instr14_12== 3'b100) begin 
                      
                        ALU_selection=4'b0111;  //modified

                      end

                      if (instr14_12== 3'b101) begin 
                        if (instr30==0)begin 
                        ALU_selection=4'b1001; //modified to keep track of the prv_alu
                        end
                        else begin 
                        ALU_selection=4'b1010;
                        end
                      end 



                      if (instr14_12== 3'b110) begin 
                        if (instr30==0)begin 
                        ALU_selection=4'b0100; //modified
                        end
                      end 

                      if (instr14_12== 3'b111) begin 
                        if (instr30==0)begin 
                        ALU_selection=4'b0101;  //modified
                        end
              end 




              end 



              endcase 

      loadbyte= (instr14_12== 3'b000) || (instr14_12== 3'b100);
      loadhalf=(instr14_12== 3'b001) || (instr14_12== 3'b101); 
      signedmem= (instr14_12== 3'b100) || (instr14_12== 3'b101);  //modified to load the number of bytes we need

end 

endmodule