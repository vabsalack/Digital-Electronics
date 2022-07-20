`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:47 07/20/2022 
// Design Name: 
// Module Name:    SeqDect_1001 
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
module SeqDect_1001(input clk,
						  input rstn,
						  input x,
						  output reg y);
						  
parameter S0 = 2'b00,
			 S1 = 2'b01,
			 S2 = 2'b10,
			 S3 = 2'b11;

reg [1:0] current_state, next_state;

always @(posedge clk or negedge rstn)
begin

if (!rstn)
	current_state <= S0;
else
	current_state <= next_state;
	
end

always @(current_state or x)

begin

case(current_state)

S0:
begin
next_state = x ? S1: S0;
y = 1'b0;
end

S1:
begin
next_state = x ? S1: S2;
y = 1'b0;
end

S2:
begin
next_state = x? S1: S3;
y = 1'b0;
end

S3:
begin
next_state = x? S1: S0;
y = x? 1'b1: 1'b0;
end

endcase

end

endmodule
