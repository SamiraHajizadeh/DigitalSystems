`timescale 1ns/1ns

module SR_latch_TB();

	logic s=0, r=1, c=0;
	wire q;

	SR_latch l(s, r, c, q);

	initial begin
	#40 c=1;
	#40 s=1; r=0;
	#40 c=0;
	#40 c=1;
	#40 s=0; r=0;
	#40 c=0;
	#40 c=1;
	#40 s=0; r=1;
	#40 c=0;
	#40 c=1;
	#40 s=0; r=0;
	#40 c=0;
	#40 $stop;
	end

endmodule
