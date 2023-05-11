`timescale 1ns/1ns

module FA_nbit_TB();

	logic [3:0] A;
	logic [3:0] B;
	logic Cin;
	wire [3:0] S;
	wire Cout;
	parameter n = 4;

	FA_nbit #(n) fa(A, B, Cin, S, Cout);

	initial begin

	repeat(5)
	begin
	#160 A = {$random} % (4'b1111);
	#160 B = {$random} % (4'b1111);
	#160 Cin = {$random} % (1'b1);	end

	#160 $stop;
	end

endmodule 
