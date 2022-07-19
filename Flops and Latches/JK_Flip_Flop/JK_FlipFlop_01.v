`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:36:46 07/19/2022 
// Design Name: 
// Module Name:    JK_FlipFlop_01 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module JK_FlipFlop_01(input j,
							 input k,
							 input rstn,
							 input clk,
							 output reg q);
							 
always @(posedge clk or negedge rstn)
begin

if (!rstn)
begin

q <= 0;

end

else
begin

q <= (j & ~q) | (~k & q);

end

end


endmodule
