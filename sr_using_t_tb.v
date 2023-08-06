`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2023 14:54:17
// Design Name: 
// Module Name: sr_using_t_tb
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


module sr_using_t_tb(

    );
    reg rst;
  reg clk;
  reg s;
  reg r;
  wire q;
  wire qbar;
  sr_ff_using_t ss(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
  initial begin
  clk=1'b1;
  forever #5 clk=~clk;
  end
  initial begin
  rst=1;#10 
  rst=~rst;
  end
  initial begin
  s=0;r=0;
  #10 s=0;r=1;
  //#10 s=0;r=0;
  #10 s=1;r=0;
 // #10 s=0;r=0;
  #10 s=1;r=1;
  //#10 s=0;r=0;
  end
  
endmodule
