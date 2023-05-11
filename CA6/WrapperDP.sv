`timescale 1ns/1ns


module WrapperDP(input clk, rst, enTri, leB, leA, input [31:0] inBus, FPout, output [31:0] ABus, BBus, outBus);

	logic [31:0] Areg, Breg;
	always @(posedge clk, posedge rst) begin 
		if (rst)
			Breg <= 32'b0;
		else
			if (leB)
				Breg <= inBus;
	end

	always @(posedge clk, posedge rst) begin 
		if (rst)
			Areg <= 32'b0;
		else begin
			if (leA)
				Areg <= inBus;
		end
	end

	assign outBus = enTri ? FPout : 32'bz;

endmodule
