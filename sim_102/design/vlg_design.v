
`timescale 1ns/1ps

module vlg_design(
	input clk,
	input rst_n,
	output reg clk_1mhz 
    );
	
`define CNT_MAX 100
`define CNT_MAX_DIV2 `CNT_MAX / 2

reg [7:0] cnt;

always @(posedge clk) begin
	if (!rst_n)
		cnt <= 1'd0;
	else if (cnt < (`CNT_MAX - 1))
		cnt <= cnt + 1'b1;
	else cnt <= 1'd0;
end

always @(posedge clk) begin
	if (!rst_n)
		clk_1mhz <= 1'b0;
	else if (cnt < `CNT_MAX_DIV2)
		clk_1mhz <= 1'b1;
	else clk_1mhz <= 1'b0;
end

endmodule

