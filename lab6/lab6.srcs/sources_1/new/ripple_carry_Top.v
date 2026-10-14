`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 04:57:57 PM
// Design Name: 
// Module Name: ripple_carry_Top
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


module ripple_carry_Top(
        input  [7:0] sw,
        output [4:0] led
    );
    
    ripple_carry_adder DUT(
        .a(A),
        .b(B),
        .cin(Cin),
        .sum(Sum),
        .cout(MSB)
    );
    
    
    wire [3:0] A = sw[7:4];
    wire [3:0] B = sw[3:0]; 
    wire [3:0] Sum;
    wire MSB;

assign led[3:0] = Sum[3:0];
assign led[4] = MSB;

        
endmodule