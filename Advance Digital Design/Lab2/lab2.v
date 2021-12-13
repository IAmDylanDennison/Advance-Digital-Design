module BitCounter (output reg[3:0] fourBits, input clock, input reset);

integer increment = 1;

always @ (posedge clock)

	begin 

	if (!reset == 1'b1) //high at edge of clock
		fourBits <= fourBits + increment;
	else //low at edge of clock
		fourBits <= 4'b0000;

	end

endmodule
