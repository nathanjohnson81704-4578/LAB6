`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 05:28:35 PM
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(
    input wire [3:0] a,
    input wire [3:0] b,
    input wire cin,
    output wire [3:0] sum,
    output wire cout
    );
    
//	wire [3:0] s_lo;
//	wire       c4;
//	ripple_carry_adder lo (
//		.a(a[3:0]), .b(b[3:0]), .cin(cin),
//		.sum(s_lo), .cout(c4)
//	);

	wire [3:0] s_hi0, s_hi1;
	wire       c8_0, c8_1;
	ripple_carry_adder hi0 (
		.a(a[3:0]), .b(b[3:0]), .cin(1'b0),
		.sum(s_hi0), .cout(c8_0)
	);
	ripple_carry_adder hi1 (
		.a(a[3:0]), .b(b[3:0]), .cin(1'b1),
		.sum(s_hi1), .cout(c8_1)
	);

//	assign sum[3:0] = s_lo;
	assign sum[3:0] = cin ? s_hi1 : s_hi0;
	assign cout  = cin ? c8_1  : c8_0;
endmodule
