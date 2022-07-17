`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:25:17 07/17/2022
// Design Name:   D_LATCH
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Flops and Latches/D_Latch/D_LATCH_tb.v
// Project Name:  D_Latch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_LATCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_LATCH_tb_v;

	// Inputs
	reg d;
	reg enable;
	reg reset;
	integer i;
	reg [2:0] delay1;
	reg [2:0] delay2;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	D_LATCH uut (
		.q(q), 
		.d(d), 
		.enable(enable), 
		.reset(reset)
	);

	initial
	begin
	
		$monitor("[%0t] enable=%0b d=%0b q=%0b", $time, enable, d, q);
		
		d <= 0;
		enable <= 0;
		reset <= 0;
		
		#10 reset <= 1;
		
		for (i = 0; i<5; i=i+1)
		
			begin
				delay1 = $random;
				delay2 = $random;
				#(delay2) enable <= ~enable;
				#(delay1) d <= i;
			end

	end
      
endmodule

