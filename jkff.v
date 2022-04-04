`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:55 04/04/2022 
// Design Name: 
// Module Name:    jkff 
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
module jkff(input reset,input clk,input j,input k,output reg q,output qnot);
assign qnot=~q;
always @(posedge clk)
	if(reset) q<=1'b0;else
	case ({j,k})
     2'b00: q<=q;
     2'b01: q<=1'b0;
     2'b10: q<=1'b1;
     2'b11: q<=~q;
	endcase
endmodule 