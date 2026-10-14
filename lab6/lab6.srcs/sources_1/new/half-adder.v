`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 02:41:00 PM
// Design Name: 
// Module Name: half-adder
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


module half_adder(
    input wire a,
    input wire b,
    output wire sum,
    output wire carry
    );
    assign sum = a ^ b;
    assign carry = a & b;
    
endmodule
