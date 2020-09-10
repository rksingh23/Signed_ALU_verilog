//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// File: Signed ALU.v
// Purpose: Design and test an ALU performing signed and unsigned calculations.
// Concept: 1.  A and B is a 4-bit signed number. 
//          2. C is a 4-bit unsigned number.
//          3. Design and verify ALU executing : OUT = A + B*C
//
// Owner: Rohit Kumar Singh
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


`timescale 1ns/1ns

module tb_ALU();
reg signed [3:0] A; 
reg signed [3:0] B;
reg  [3:0] C;  
wire signed [7:0] OUT; 

ALU dut(.A(A),.B(B),.C(C),.OUT(OUT));

initial 
begin
A=4'b1011;
B=4'b1011;
C=4'b1010;
#5;
A=4'b0111;
B=4'b0111;
C=4'b1111;
#5;
A=4'b0011;
B=4'b0011;
C=4'b1010;
#5;
A=4'b1000;
B=4'b1000;
C=4'b1111;
#5;
A=4'b1010;
B=4'b1010;
C=4'b1010;
#5;

end

endmodule