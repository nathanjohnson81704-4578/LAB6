`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 03:48:16 PM
// Design Name: 
// Module Name: ripple_carry_Test
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


module ripple_carry_Test(

    );
    reg [3:0] A; 
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    
    ripple_carry_adder DUT(
    .a(A),
    .b(B),
    .cin(Cin),
    .sum(Sum),
    .cout(MSB)
    );
    
    initial begin
        A = 4'b0000;
        B = 4'b0000;
        Cin = 1'b0;

        A = 4'b0011; B = 4'b0101; #10;
        A = 4'b0101; B = 4'b0011; #10;
        A = 4'b0011; B = 4'b0101; #10;
        A = 4'b0101; B = 4'b1101; #10;
        A = 4'b1110; B = 4'b1101; #10;
        A = 4'b0111; B = 4'b0001; #10;
        A = 4'b1000; B = 4'b0001; #10;
        A = 4'b0000; B = 4'b0101; #10;
        A = 4'b0000; B = 4'b0101; #10;
        A = 4'b0101; B = 4'b1011; #10;
        A = 4'b1011; B = 4'b1101; #10;
        A = 4'b1000; B = 4'b0000; #10;
        A = 4'b0111; B = 4'b0000; #10;
        A = 4'b1001; B = 4'b0001; #10; 
        A = 4'b0110; B = 4'b1110; #10;
        
        $finish;
     end

endmodule
