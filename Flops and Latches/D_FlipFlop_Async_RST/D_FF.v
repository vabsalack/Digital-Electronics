`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:28:19 07/16/2022 
// Design Name: 
// Module Name:    D_FF 
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
module D_FF(q, d, rstn, clk);

input d;
input rstn;
input clk;

output q;

reg q;

// this is for asynchronous reset input

always @(posedge clk or negedge rstn)
	if (!rstn)
		q <= 0;
	else
		q <= d;
		
// this is for synchronous reset input.
// uncomment below always construct and commment above always construct for d flip flop synchrounous reset.

/*
always @(posedge clk)
	if (!rstn)
		q <= 0;
	else
		q <=d; 
*/

endmodule
