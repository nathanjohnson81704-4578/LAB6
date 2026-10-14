`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:24:47 PM
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(

    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output wire [3:0] sum,
    output wire cout
    );
    wire [4:0] carry;
    assign carry[0] = cin;

genvar x;
generate
    for (x=0; x<4; x=x+1) begin : FA_STAGE
        full_adder fa (
        .a (a[x]),
        .b (b[x]),
        .cin (carry[x]),
        .sum (sum[x]),
        .cout (carry[x+1])
        );
     end 
  endgenerate

    assign cout = carry[4];
endmodule
