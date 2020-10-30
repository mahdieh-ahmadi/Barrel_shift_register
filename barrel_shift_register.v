`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:55 10/30/2020 
// Design Name: 
// Module Name:    barrel_shift_register 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module barrel_shift_register(
    input [7:0] in,
    input [2:0] shift_mag,
    input control,
    output [7:0] out
    );

	assign out = control == 0 ?  
	(shift_mag == 0 ? in : (shift_mag == 1 ? {in[0],in[7:1]} : (shift_mag == 2 ? {in[1:0],in[7:2]} : {in[2:0],in[7:3]}) ))   
	:(shift_mag == 0 ? in : (shift_mag == 1 ? {in[6:0],in[7]} : (shift_mag == 2 ? {in[5:0],in[7:6]} : {in[4:0],in[7:5]}) ));   

endmodule
