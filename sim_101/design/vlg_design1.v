
`timescale 1ns/1ps

module vlg_design1(
	input a,b,
	output reg z
    );
	
always @(a or b) begin
	z = a ^b;
end

endmodule

