`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:32:15 07/19/2022
// Design Name:   Full_adder
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Combinational_Logic/Full_Adder/full_adder_tb.v
// Project Name:  Full_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_tb_v;

	// Inputs
	reg a;
	reg b;
	reg carry_in;

	// Outputs
	wire sum;
	wire carry;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	Full_adder uut (
		.a(a), 
		.b(b), 
		.carry_in(carry_in), 
		.sum(sum), 
		.carry(carry)
	);

	initial 
	begin
		// Initialize Inputs
		a = 0;
		b = 0;
		carry_in = 0;
		
		$monitor("a=%0b b=%0b carry_in=%0b sum=%0b carry=%0b", a, b, carry_in, sum, carry);
		// Wait 100 ns for global reset to finish
		#100;
		for (i = 0; i < 8; i = i + 1)
		begin
		
		{a, b, carry_in} = i;
		#10;
       
		end
		// Add stimulus here

	end
      
endmodule

