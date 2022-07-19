`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:10:04 07/19/2022 
// Design Name: 
// Module Name:    Modulo_10 
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
module Modulo_10(input clk, 
					  input rstn,
					  output reg [3:0] out);
					  
always @ (posedge clk)
begin

if (!rstn)
out <= 0;

else
begin

if (out == 9)
out <= 0;

else
out <= out + 1;
end


end


endmodule
