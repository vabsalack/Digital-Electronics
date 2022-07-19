`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:15:19 07/19/2022
// Design Name:   Modulo_10
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Counters/Modulo_10/modulo_10_tb.v
// Project Name:  Modulo_10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Modulo_10
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module modulo_10_tb_v;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Modulo_10 uut (
		.clk(clk), 
		.rstn(rstn), 
		.out(out)
	);

	always #10 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		{clk, rstn} <= 0;
		
		$monitor("out=%0d",  out);
		
		#10 rstn <= ~rstn;
		
		#450 $finish;


	end
      
endmodule

