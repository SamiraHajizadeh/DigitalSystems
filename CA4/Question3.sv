`timescale 1ns/1ns

module D_latch(input D, Clk, output Q);
	
	wire dbar;
	not (dbar, D);
	SR_latch l(D, dbar, Clk, Q);

endmodule


module D_latch_TB();

	logic d=0;
	logic c=0;
	wire q;
	D_latch l(d, c, q);

	initial begin
	#40 d=1;
	#40 c=1;
	#40 d=0;
	#40 c=0;
	#40 d=1;
	#40 $stop;
	end

endmodule