`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 21:18:56
// Design Name: 
// Module Name: sr_ff_using_t
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
module t_ff(input clk,t,rst,output reg q=0,output qbar);
always@(posedge clk)
begin
if(rst)
q<=1'b0;
else
begin
if(t)
q<=~q;
else
q<=q;
end
end
//assign qbar=~q;
endmodule

module sr_ff_using_t(
    input clk,
    input s,
    input r,
    input rst,
    output q,
    output qbar
    );
    wire x;
    assign x=(r&q)|(s&qbar);
    t_ff tff(clk,rst,x,q);
    assign qbar=~q;
endmodule
