`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:42:03 10/30/2020
// Design Name:   barrel_shift_register
// Module Name:   E:/university/3991/fpga/homeworks/Barrel_shoft_register/test_barrel_sifter.v
// Project Name:  barrel_shift_register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: barrel_shift_register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_barrel_sifter;

	// Inputs
	reg [7:0] in;
	reg [2:0] shift_mag;
	reg control;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	barrel_shift_register uut (
		.in(in), 
		.shift_mag(shift_mag), 
		.control(control), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		shift_mag = 0;
		control = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in = 124;
		shift_mag = 2;
		control = 0;
		#100;
		
		in = 100;
		shift_mag = 1;
		control = 1;
		#100;
		
		in = 52;
		shift_mag = 3;
		control = 0;
		#100;
		
		in = 14;
		shift_mag = 0;
		control = 0;
		#100;
		
		in = 49;
		shift_mag = 3;
		control = 1;
		#100;
        
		// Add stimulus here

	end
      
endmodule

