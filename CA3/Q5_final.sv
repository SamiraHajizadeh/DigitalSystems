`timescale 1ns/1ns
module counter_127bit_TB_final ();
	
	logic [126:0] A = 1'd0;
	wire [6:0] N;

	ones_counter_127bit counter(A, N);
	initial begin
	repeat(8)
		begin
		#1000 A = 2*A + 1;
		end
	repeat(10)
		begin
		#1000 A = A*2;
		end
	repeat(5)
		begin
		#1000 A = {$random} % (1'd1);		end
	#1000 $stop;
	end

endmodule
