`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2023 20:39:46
// Design Name: 
// Module Name: sr_using_jk
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
module jk_ff(input clk,j,k,output qbar,output reg q);
assign qbar=~q;
always@(posedge clk)
begin
case({j,k})
2'b00:q<=q;
2'b01:q<=0;
2'b10:q<=1;
2'b11:q<=~q;
endcase
end
endmodule

module sr_using_jk(
    input clk,
    input s,
    input r,
    output q,
    output qbar
    );
 jk_ff jk(clk,s,r,q,qbar);
 //assign qbar=~q;
endmodule
