`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:37 07/17/2022 
// Design Name: 
// Module Name:    D_LATCH 
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
module D_LATCH(q, d, enable, reset);

input d;
input enable;
input reset;

output q;
reg q;


always @(enable or reset or d)

if (!reset)
	q <= 0;
else
	if (enable)
		q <= d;

endmodule
