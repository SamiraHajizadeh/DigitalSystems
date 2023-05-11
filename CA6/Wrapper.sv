`timescale 1ns/1ns


module Wrapper(input inReady, resultAccepted, doneFP, input [31:0] inBus, output startFP, resultReady, inAccept, output [31:0] ABus, BBus);

	WrapperCu cu
	WrapperDP dp

endmodule
