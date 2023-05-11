`timescale 1ns/1ns


module SeqmultDP(input clk, rst, loadA, loadB, loadP, shiftA, initP, Bsel,
		input [23:0] A, B, output A0, output [23:0] seqOut);


	logic [23:0] Areg, Breg, Preg;
	wire [23:0] B_AND;
	wire [24:0] AddBus;

	always @(posedge clk, posedge rst) begin 
		if (rst)
			Breg <= 24'b0;
		else
			if (loadB)
				Breg <= B;
	end

	always @(posedge clk, posedge rst) begin 
		if (rst)
			Preg <= 24'b0;
		else begin
			if (initP)
				Preg <= 24'b0;
				else
					if (loadP)
						Preg <= AddBus;
		end
	end

	always @(posedge clk, posedge rst) begin 
		if (rst)
			Areg <= 24'b0;
		else begin
			if (loadA)
				Areg <= A;
				else
					if (shiftA)
						Areg <= {AddBus[0], Areg[23:0]};
		end
	end

	assign B_AND = Bsel ? Breg : 24'b0;
	assign AddBus = B_AND + Preg;
	assign ResultBus = {Preg, Areg};		
	assign A0 = Areg[0];

endmodule
