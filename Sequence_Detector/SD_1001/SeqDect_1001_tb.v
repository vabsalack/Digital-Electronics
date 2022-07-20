`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:03:55 07/20/2022
// Design Name:   SeqDect_1001
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Sequence_Detector/SD_1001/SeqDect_1001_tb.v
// Project Name:  SD_1001
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SeqDect_1001
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SeqDect_1001_tb_v;

	// Inputs
	reg clk;
	reg rstn;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	SeqDect_1001 uut (
		.clk(clk), 
		.rstn(rstn), 
		.x(x), 
		.y(y)
	);
	always #10 clk = ~clk;
	
	initial
	
	begin
	
		clk = 0;
		rstn = 0;
		x = 0;
		
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		
		#8 rstn = 1;
		
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1; // output is 1 here
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
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1; // output is 1 here
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 1;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		@(posedge clk) x = 0;
		$display("time: %0d input x: %0b output %0b", $time, x, y);
		
		#50 $finish;	

	end
      
endmodule

