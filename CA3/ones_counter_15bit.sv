`timescale 1ns/1ns

module ones_counter_15bit (input [14:0] A, output [3:0] N);

	wire [5:0] in_3bit;
	genvar i;

	generate
	for (i=0; i < 2; i = i + 1) begin: onecounters
		ones_counter_7bit counter(A[i*7+6:i*7], in_3bit[i*3+2:i*3]);
	end
	endgenerate


	parameter m = 3;
	FA_nbit #(m) fa(in_3bit[2:0], in_3bit[5:3], A[14], N[2:0], N[3]);

endmodule
