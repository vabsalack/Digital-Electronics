`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:45 07/20/2022 
// Design Name: 
// Module Name:    pattern_detector_52 
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
module pattern_detector_52(input x,
									input clk,
									input rstn,
									output reg y);
							
					
parameter S0 = 3'b000,
			 S1 = 3'b001,
			 S2 = 3'b010,
			 S3 = 3'b011,
			 S4 = 3'b100,
			 S5 = 3'b101;
			 
reg [2:0] current_state,
			 next_state;
			 
always @(posedge clk 
			or negedge rstn)
begin

if (!rstn)
	current_state = S0;
else
	current_state = next_state;
	
end

always @(current_state 
			or x)
			
begin

	case(current_state)
	
	S0:
	begin
		next_state = x ? S1: S0;
		y = 1'b0;
	end
	
	S1:
	begin
		next_state = x ? S2: S0;
		y = 1'b0;
	end
	
	S2:
	begin
		next_state = x ? S2: S3;
		y = 1'b0;
	end
	
	S3:
	begin
		next_state = x? S4: S0;
		y = 1'b0;
	end
	
	S4:
	begin
		next_state = x? S2: S5;
		y = 1'b0;
	end
	
	S5:
	begin
		next_state = S0;
		y = x? 1'b0: 1'b1;
	end
	
endcase
end

endmodule
