`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 02:43:46 PM
// Design Name: 
// Module Name: Half_adderTest
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


module Half_adderTest(

    );
    reg part1, part2;
    wire sum, rem;
    
    half_adder DUT(
    .a(part1),
    .b(part2),
    .sum(sum),
    .carry(rem)
    );
    
    initial begin
        part1=0; part2=0;
        #10;
        part1=0; part2=1;
        #10;
        part1=1; part2=0;
        #10;
        part1=1; part2=1;
        #10;
        
        $stop;
    end
    
    
endmodule
