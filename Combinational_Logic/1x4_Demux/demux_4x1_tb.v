`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:51:41 07/19/2022
// Design Name:   Demun_4x1
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Combinational_Logic/1x4_Demux/demux_4x1_tb.v
// Project Name:  1x4_Demux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Demun_4x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module demux_4x1_tb_v;

	// Inputs
	reg f;
	reg [1:0] sel;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Demun_4x1 uut (
		.f(f), 
		.sel(sel), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		f = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
		$monitor("f=%0b sel=%0b a=%0b b=%0b c=%0b d=%0b", f, sel, a, b, c, d);
		for (i = 0; i < 8; i = i + 1)
		begin
		
		{f, sel} = i;
		#10;
		
		end
		// Add stimulus here

	end
      
endmodule

