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

module ALU(A,B,C,OUT);
input signed [3:0] A; //0111- 7
input signed [3:0] B; //0111 - 7
input [3:0] C;        //01111 - 15 112
output reg signed [7:0] OUT; //(7 bits to represent 112, 8th bit for sign)
reg signed [7:0] temp;

always@(*) begin
temp = B*$signed({1'b0,C});
OUT=A+temp;
end

endmodule