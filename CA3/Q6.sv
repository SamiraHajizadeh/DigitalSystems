`timescale 1ns/1ns

module ones_counter_127bit_Q6 (input [126:0] A, output reg [6:0] N);
	integer i;
	always @(A) begin
		#783 N = 7'b0000000;
		for (i=0; i<127; i=i+1) begin
			if (A[i]==1'b1) 
				N=N+(1'b1);
		end
	end
endmodule
