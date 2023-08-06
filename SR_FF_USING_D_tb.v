`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2023 19:25:44
// Design Name: 
// Module Name: SR_FF_USING_D_tb
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


module SR_FF_USING_D_tb(

    );
    reg clk;
    reg s;
    reg r;
    wire q;
    wire qbar;
    
    SR_FF_USING_D uut(.clk(clk),.s(s),.r(r),.q(q),.qbar(qbar));
    initial
    begin
    clk=0;s=0;r=0;
    #10 clk=1;s=0;r=0;
    #10 clk=0;s=0;r=1;
    #10 clk=1;s=0;r=1;
    #10 clk=0;s=1;r=0;
    #10 clk=1;s=1;r=0;
    #10 clk=0;s=1;r=1;
    #10 clk=1;s=1;r=1;
    end
endmodule
