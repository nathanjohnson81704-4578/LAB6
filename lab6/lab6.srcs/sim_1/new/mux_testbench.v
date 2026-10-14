`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 01:50:28 PM
// Design Name: 
// Module Name: mux_testbench
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


module mux_testbench(

    );
    reg in1,in2,ins;
    wire test;
    
    mux DUT (
        .out(test), 
        .i0(in1), 
        .i1(in2), 
        .sel(ins)
    );
    
    initial begin
        in1=0; in2=0; ins=0;
        #10;
        in1=0; in2=1; ins=0;
        #10;
        in1=1; in2=0; ins=0;
        #10;
        in1=1; in2=1; ins=0;
        #10;
        in1=0; in2=0; ins=1;
        #10;
        in1=0; in2=1; ins=1;
        #10;
        in1=1; in2=0; ins=1;
        #10;
        in1=1; in2=1; ins=1;
        #10;
        
        $stop;
    end
    
endmodule
