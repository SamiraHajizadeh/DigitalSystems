`timescale 1ns/1ns

module ones_counter_127bit (input [126:0] A, output [6:0] N);

	wire [11:0] in_6bit;
	genvar i;

	generate
	for (i=0; i < 2; i = i + 1) begin: onecounters
		ones_counter_63bit counter(A[i*63+62:i*63], in_6bit[i*6+5:i*6]);
	end
	endgenerate


	parameter m = 6;
	FA_nbit #(m) fa(in_6bit[5:0], in_6bit[11:6], A[126], N[5:0], N[6]);

endmodule
