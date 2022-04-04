`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:01:17 04/04/2022
// Design Name:   jkff
// Module Name:   D:/exp/dsd/Charan/jkff_test.v
// Project Name:  Charan
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jkff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module test;

reg clk=0;
reg j=0;
reg k=0;
reg reset=1;
wire q,qnot;

  jkff DUT (.reset(reset),.clk(clk),.j(j),.k(k),.q(q),.qnot(qnot));

initial 
   begin
         $monitor($time,"j=%b k=%b Q=%b Qnot=%b",j,k,q,qnot);
   j=1'b1;//set your j k here
   k=1'b1;
#5 reset=1'b0;
#25 $finish;
   end

always #1 clk=~clk;

endmodule
