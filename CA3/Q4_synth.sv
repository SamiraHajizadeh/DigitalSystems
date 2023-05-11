`timescale 1ns/1ns

module FA_nbit #(parameter n=3) (input [n-1:0] A, B, input Cin, output [n-1:0] S, output Cout);

	assign #((n-1)*37 + 38) {Cout, S} = A + B + Cin;

endmodule

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
