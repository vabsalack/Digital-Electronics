`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:52:23 07/17/2022
// Design Name:   T_FF
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Flops and Latches/toggle_FlipFlop/T_FF_tb.v
// Project Name:  toggle_FlipFlop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: T_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module T_FF_tb_v;

	// Inputs
	reg t;
	reg clk;
	reg rstn;
	integer i;
	integer u;
	reg [4:0] delay;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	T_FF uut (
		.q(q), 
		.t(t), 
		.clk(clk), 
		.rstn(rstn)
	);
	always #5 clk = ~clk;
	initial 

	begin
		{rstn, clk, t} <= 0;

		$monitor("T=%0t delay=%0d rstn=%0b t=%0d q=%0d", $time, delay, rstn, t, q);
		repeat(2) @(posedge clk);
		rstn <= 1;
		
		for (i = 0; i < 20; i=i+1)
		begin
			delay = $random;
			#(delay) t <= delay;
		end
		# 20 $finish;
        
		// Add stimulus here

	end 
	
endmodule

