`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:37 07/19/2022
// Design Name:   deocder_4x16
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Combinational_Logic/Decoder_4x16/decoder_4x16_tb.v
// Project Name:  Decoder_4x16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: deocder_4x16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_4x16_tb_v;

	// Inputs
	reg en;
	reg [3:0] in;

	// Outputs
	wire [15:0] out;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	deocder_4x16 uut (
		.en(en), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		in = 0;

		$monitor("en=%0b in=%0b out=%0b", en, in, out);
		// Wait 100 ns for global reset to finish
		#100;
		
		for(i = 0; i < 32; i = i + 1)
		begin
		
		{en, in} = i;
		#10;
		
		end
		// Add stimulus here

	end
      
endmodule

