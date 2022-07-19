`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:14 07/19/2022 
// Design Name: 
// Module Name:    Demun_4x1 
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
module Demun_4x1(input f, input [1:0] sel, output a, b, c, d);

assign a = f & ~sel[1] & ~sel[0];
assign b = f & ~sel[1] & sel[0];
assign c = f & sel[1] & ~sel[0];
assign d = f & sel[1] & sel[0];



endmodule
