`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2023 19:19:45
// Design Name: 
// Module Name: SR_FF_USING_D
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
module d_ff(input clk,d,output reg q=0,output qbar);
assign qbar=~q;
always@(posedge clk)
begin
q<=d;
end
endmodule
module SR_FF_USING_D(
    input s,
    input r,
    input clk,
    output q,
    input qbar
    );
   wire x;
   assign x=s|(q&(~r));
   d_ff dff(clk,x,q,qbar);
endmodule
