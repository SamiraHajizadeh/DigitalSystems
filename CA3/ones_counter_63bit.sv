`timescale 1ns/1ns

module ones_counter_63bit (input [62:0] A, output [5:0] N);

	wire [9:0] in_5bit;
	genvar i;

	generate
	for (i=0; i < 2; i = i + 1) begin: onecounters
		ones_counter_31bit counter(A[i*31+30:i*31], in_5bit[i*5+4:i*5]);
	end
	endgenerate


	parameter m = 5;
	FA_nbit #(m) fa(in_5bit[4:0], in_5bit[9:5], A[62], N[4:0], N[5]);

endmodule
