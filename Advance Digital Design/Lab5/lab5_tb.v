//Dylan Dennison
//Lab 5 test branch
//11/21/21

`timescale 1ns/1ps
`include "lab5.v"

module lab5_tb;
   reg  A, B;
   wire  C, D, E;

   labFiveCode test_branch(
        .C(C),
        .D(D),
        .E(E),
        .A(A),
	.B(B)
   );


   initial

     begin

        $dumpfile("lab5.vcd");
        $dumpvars(0, lab5_tb);

	#10 assign A = 0;
        #10 assign B = 0;
        $display("done tesing case 0");
	
	#10 assign A = 1;
        #10 assign B = 0;
        $display("done tesing case 1");

	#10 assign A = 0;
        #10 assign B = 1;
        $display("done tesing case 2");

	#10 assign A = 1;
        #10 assign B = 1;
        $display("done tesing case 3");

        $finish;

     end

endmodule


