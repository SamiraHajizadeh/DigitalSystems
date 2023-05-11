`timescale 1ns/1ns

module LFSR(input SID, RS, Clk, output logic [7:0] Q);
	xor g(SID, Q[7], Q[6], Q[5], Q[1], Q[0], 1'b1);
	ShiftRegister8bit_3 sr(SID, RS, Clk, Q);

endmodule

module LFSR_TB();

	logic c=1, r=1;
	wire s;
	wire [7:0] q;

	LFSR SR(s, r, c, q);

	initial begin
	#600 r=1; c=1;
	repeat (2) #600 c=~c;
	#600 r=0;
	repeat (70) #600 c=~c;
	#600 $stop;
	end

endmodule
