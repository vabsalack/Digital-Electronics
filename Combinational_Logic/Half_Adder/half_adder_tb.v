`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:47:16 07/19/2022
// Design Name:   half_adder
// Module Name:   C:/non - window/REMOTE GIT/Digital-Electronics/Combinational_Logic/Half_Adder/half_adder_tb.v
// Project Name:  Half_Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half_adder_tb_v;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire carry;
	
	integer i;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry)
	);

	initial
	begin
		// Initialize Inputs
		a = 0;
		b = 0;
		// Wait 100 ns for global reset to finish
		#100;
		$monitor("a=%0b b=%0b sum=%0b carry=%0b", a, b, sum, carry);
		
       for (i = 0; i < 4; i = i+1)
		 begin
		 {a, b} = i;
		 #10;
		 end
		// Add stimulus here

	end
      
endmodule

