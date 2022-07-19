`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:27 07/19/2022 
// Design Name: 
// Module Name:    deocder_4x16 
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
module deocder_4x16(input en, input [3:0] in, output [15:0] out);

assign out = en ? 1 << in: 0;


endmodule
