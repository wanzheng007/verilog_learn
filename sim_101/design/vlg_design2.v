
`timescale 1ns/1ps

module vlg_design2(
	input clk,
	input rst_n,
	input a,b,
	output reg z
    );
	
always @(posedge clk) begin
	if (!rst_n)
		z <= 1'b0;
	else
		z <= a ^ b;
end

endmodule

