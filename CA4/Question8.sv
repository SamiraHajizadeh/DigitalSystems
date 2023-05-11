`timescale 1ns/1ns

module ShiftRegister8bit_2(input SID, RS, Clk, output [7:0] Q);
	
	wire [7:0] y;
	assign y[7] = SID;
	genvar i;
	generate
	for (i=7; i >= 0; i=i-1) begin
		D_mmff_rs l(y[i], RS, Clk, Q[i]);
		if (i > 0) assign y[i-1] = Q[i];
	end
	endgenerate

endmodule

module SR_8bit_2_TB();

	logic s=1, c=1, r=0;
	wire [7:0] q;

	ShiftRegister8bit_2 SR(s, r, c, q);

	initial begin
	repeat (16) #600 c=~c;
	#600 r=1;
	repeat (2) #600 c=~c;
	#600 r=0;
	repeat (2) #600 c=~c;
	#600 s=1;
	repeat (16) #600 c=~c;
	#600 r=1;
	repeat (2) #600 c=~c;
	#600 $stop;
	end

endmodule