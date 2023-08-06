`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 20:45:30
// Design Name: 
// Module Name: sr_using_jk_tb
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


module sr_using_jk_tb(

    );
    reg clk;
    reg s;
    reg r;
    wire q;
    wire qbar;
    sr_using_jk rr(.clk(clk),.s(s),.r(r),.q(q),.qbar(qbar));
    initial begin
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
