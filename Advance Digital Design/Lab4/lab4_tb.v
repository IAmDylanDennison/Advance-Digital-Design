`timescale 1ns/1ps
`include "lab4.v"

module lab4_tb;
   reg  Panic, Enable, Exiting, Window, Door, Garage;
   wire  Alarm;

   lab4code test_branch(
        .Alarm(Alarm),
        .Panic(Panic),
        .Enable(Enable),
        .Exiting(Exiting),
	.Window(Window),
	.Door(Door),
	.Garage(Garage)
   );


   initial

     begin

        $dumpfile("lab4.vcd");
        $dumpvars(0, lab4_tb);
        #10 assign Panic = 0;
        #10 assign Enable = 0;
        #10 assign Exiting = 0;
	#10 assign Window = 0;
	#10 assign Door = 0;
	#10 assign Garage = 0;
        $display("done tesing case 0");
	#10 assign Panic = 1;
        #10 assign Enable = 1;
        #10 assign Exiting = 1;
        #10 assign Window = 1;
        #10 assign Door = 0;
        #10 assign Garage = 0;

        $display("done tesing case 1");
	#10 assign Panic = 0;
        #10 assign Enable = 0;
        #10 assign Exiting = 0;
        #10 assign Window = 1;
        #10 assign Door = 1;
        #10 assign Garage = 1;

        $display("done tesing case 2");
	#10 assign Panic = 0;
        #10 assign Enable = 1;
        #10 assign Exiting = 1;
        #10 assign Window = 1;
        #10 assign Door = 1;
        #10 assign Garage = 1;

        $display("done tesing case 3");
	#10 assign Panic = 0;
        #10 assign Enable = 1;
        #10 assign Exiting = 1;
        #10 assign Window = 0;
        #10 assign Door = 0;
        #10 assign Garage = 0;
	$display("done tesing case 4");
        #10 assign Panic = 0;
        #10 assign Enable = 0;
        #10 assign Exiting = 1;
        #10 assign Window = 0;
        #10 assign Door = 1;
        #10 assign Garage = 0;
	$display("done tesing case 5");
        #10 assign Panic = 0;
        #10 assign Enable = 1;
        #10 assign Exiting = 0;
        #10 assign Window = 0;
        #10 assign Door = 1;
        #10 assign Garage = 0;
	$display("done tesing case 6");
        #10 assign Panic = 1;
        #10 assign Enable = 0;
        #10 assign Exiting = 0;
        #10 assign Window = 0;
        #10 assign Door = 0;
        #10 assign Garage = 0;
	$display("done tesing case 7");


	$finish;

end

endmodule
