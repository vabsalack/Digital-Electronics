`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:40:40 07/20/2022
// Design Name:   pattern_detector_52
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Pattern_Detector/PD_110100/pattern_detector_52_tb.v
// Project Name:  PD_110100
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pattern_detector_52
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pattern_detector_52_tb_v;

	// Inputs
	reg x;
	reg clk;
	reg rstn;
	integer i;
	reg [1:0] random_clock, tb_in;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	pattern_detector_52 uut (
		.x(x), 
		.clk(clk), 
		.rstn(rstn), 
		.y(y)
	);
	always #10 clk = ~clk;

	initial
	begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		rstn = 0;
	
	#8 rstn = 1;
	/*
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0; // output is high 1 here
		
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1; // ouptput is 1 here
		
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y); */

	for( i = 0; i<50; i = i+1)
	begin
	
	$display("time: %0d input x: %0b output: %0b", $time, x, y);
	
	//random_clock = $random;
	//repeat(random_clock) @(posedge clk);
	
	tb_in = $random;
	@ (posedge clk) x = tb_in;
	end 
	
	end     
endmodule

