`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:31:10 07/16/2022
// Design Name:   D_FF
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Flops and Latches/D_FlipFlop_Async_RST/D_FF_tb.v
// Project Name:  D_FlipFlop_Async_RST
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_FF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_FF_tb_v;

	// Inputs
	reg d;
	reg rstn;
	reg clk;
	
	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_FF uut (
		.q(q), 
		.d(d), 
		.rstn(rstn), 
		.clk(clk)
	);
	
	initial 
	
	begin
	clk <= 0;
	d <= 0;
	rstn <= 1;
	end
	
	always # 10 rstn <= ~rstn;
	always # 7 d <= ~d;
	always #5 clk <= ~clk;
	
	always #100 $finish;
      
endmodule

