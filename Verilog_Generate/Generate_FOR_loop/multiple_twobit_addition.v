`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:19:55 07/19/2022 
// Design Name: 
// Module Name:    multiple_twobit_addition 
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
module half_adder(input a, b, output sum, carry);
assign sum = a ^ b;
assign carry = a & b;
endmodule

module multiple_twobit_addition 
											#(parameter N=4)
											( input [N-1:0] a, b,
											  output [N-1:0] sum, carry);
										

genvar i;

generate
	for (i = 0; i < N; i = i + 1) 
	begin : gen_HA
		half_adder u0 (a[i], b[i], sum[i],carry[i]);
	end	

endgenerate

endmodule
