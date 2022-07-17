`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:43 07/17/2022 
// Design Name: 
// Module Name:    T_FF 
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
module T_FF(q, t, clk, rstn);

input t;
input clk;
input rstn;

output q;
reg q;

always @(posedge clk)

begin

	if (!rstn)
		q <= 0;
	else
		if (t)
			q <= ~q;
		else
			q <= q;
end

endmodule
