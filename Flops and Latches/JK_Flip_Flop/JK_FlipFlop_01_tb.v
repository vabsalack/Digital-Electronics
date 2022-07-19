`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:21 07/19/2022
// Design Name:   JK_FlipFlop_01
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Flops and Latches/JK_Flip_Flop/JK_FlipFlop_01_tb.v
// Project Name:  JK_Flip_Flop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK_FlipFlop_01
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JK_FlipFlop_01_tb_v;

	// Inputs
	reg j;
	reg k;
	reg rstn;
	reg clk;
	reg [2:0] dly;
	
	integer i;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	JK_FlipFlop_01 uut (
		.j(j), 
		.k(k), 
		.rstn(rstn), 
		.clk(clk), 
		.q(q)
	);
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		rstn = 0;
		clk = 0;
		
		$monitor("clk=%0b rstn=%0b dly=%0d j=%0b k=%0b q=%0b", clk, rstn, dly, j, k, q);
		
		#10 rstn = ~rstn;

		for (i = 0; i < 10; i = i + 1)
		begin
		
		dly = $random;
		#(dly) j <= $random;
		#(dly) k <= $random;
		
		end
		
        
		// Add stimulus here

	end
      
endmodule

