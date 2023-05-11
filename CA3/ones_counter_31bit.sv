`timescale 1ns/1ns

module ones_counter_31bit (input [30:0] A, output [4:0] N);

	wire [7:0] in_4bit;
	genvar i;

	generate
	for (i=0; i < 2; i = i + 1) begin: onecounters
		ones_counter_15bit counter(A[i*15+14:i*15], in_4bit[i*4+3:i*4]);
	end
	endgenerate


	parameter m = 4;
	FA_nbit #(m) fa(in_4bit[3:0], in_4bit[7:4], A[30], N[3:0], N[4]);

endmodule
