`timescale 1ns/1ns

module ShiftRegister8bit(input SID, Clk, output [7:0] Q);
	
	wire [7:0] y;
	assign y[7] = SID;
	genvar i;
	generate
	for (i=7; i >= 0; i=i-1) begin
		D_latch l(y[i], Clk, Q[i]);
		if (i > 0) assign y[i-1] = Q[i];
	end
	endgenerate

endmodule

module SR_8bit_TB();

	logic s=0, c=0;
	wire [7:0] q;

	ShiftRegister8bit SR(s, c, q);	

	initial begin
	#300 s=1;
	#300 s=0;
	#300 c=1;
	#300 s=1;
	#300 c=0;
	#300 $stop;
	end

endmodule