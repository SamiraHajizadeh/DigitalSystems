`timescale 1ns/1ns

module ones_counter_7bit (input [6:0] A, output [2:0] N);

	wire [3:0] in_2bit;
	parameter n=1;
	genvar i;

	generate
	for (i=0; i < 2; i = i + 1) begin: FAs
		FA_nbit #(n) fa(A[i*3], A[i*3+1], A[i*3+2], in_2bit[i*2], in_2bit[i*2+1]);
	end
	endgenerate
	parameter m = 2;
	FA_nbit #(m) fa(in_2bit[1:0], in_2bit[3:2], A[6], N[1:0], N[2]);

endmodule
