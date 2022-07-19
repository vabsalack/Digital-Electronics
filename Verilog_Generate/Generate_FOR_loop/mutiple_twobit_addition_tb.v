`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:44:33 07/19/2022
// Design Name:   multiple_twobit_addition
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Verilog_Generate/Generate_FOR_loop/mutiple_twobit_addition_tb.v
// Project Name:  Generate_FOR_loop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiple_twobit_addition
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mutiple_twobit_addition_tb_v;

	// Inputs
	parameter N = 2;
	reg [N-1:0] a;
	reg [N-1:0] b;

	// Outputs
	wire [N-1:0] sum;
	wire [N-1:0] carry;

	// Instantiate the Unit Under Test (UUT)
	multiple_twobit_addition 
	#(.N(N))
	uut(
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial begin
		// Initialize Inputs
		a <= 0;
		b <= 0;
		
		$monitor("a=0x%0h b=0x%0h sum=0x%0h carry=0x%0h", a, b, sum, carry);
		

		#10 a <= 'h2;
		b <= 'h3;
		
		#20 b <= 'h4;
		a <= 'h5;

	end
      
endmodule

