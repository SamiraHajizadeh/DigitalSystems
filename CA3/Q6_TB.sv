`timescale 1ns/1ns
module counter_127bit_Q6_TB ();
	
	logic [126:0] A = 1'd0;
	wire [6:0] N;

	ones_counter_127bit_Q6 counter(A, N);

	initial begin
	repeat(127)
		begin
		#1000 A = 2*A + 1;
		end
	repeat(127)
		begin
		#1000 A = A*2;
		end
	#1000 $stop;
	end

endmodule
