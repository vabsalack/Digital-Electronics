`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:30:58 07/16/2022
// Design Name:   JK_FF
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Flops and Latches/JK_Flip_Flop/JK_tb.v
// Project Name:  JK_Flip_Flop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_tb_v;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	
	

	// Instantiate the Unit Under Test (UUT)
	JK_FF uut (
		.q(q), 
		.j(j), 
		.k(k), 
		.clk(clk)
	);

	
	initial begin
		// Initialize Inputs
		clk = 0;
		j <= 0;
		k <= 0;
		
		#5  j <= 0;
			 k <= 1;
		#20 j <= 1;
			 k <= 0;
		#20 j <= 1;
			 k <= 1;
		#20 $finish;
	end
	
	always #5 clk = ~clk;
	
	     
endmodule

