`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 02:56:52 PM
// Design Name: 
// Module Name: full_adderTest
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


module full_adderTest(

    );
    reg part1, part2, addin;
    wire sum, MSB;
    
    full_adder DUT(
    .a(part1),
    .b(part2),
    .cin(addin),
    .sum(sum),
    .cout(MSB)
    );

        initial begin
        part1=0; part2=0; addin=0;
        #10;
        part1=0; part2=1; addin=0;
        #10;
        part1=1; part2=0; addin=0;
        #10;
        part1=1; part2=1; addin=0;
        #10;
        part1=0; part2=0; addin=1;
        #10;
        part1=0; part2=1; addin=1;
        #10;
        part1=1; part2=0; addin=1;
        #10;
        part1=1; part2=1; addin=1;
        #10;
        
        $stop;
    end
    
    
    
    
endmodule
