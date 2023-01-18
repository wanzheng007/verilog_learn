
`timescale 1ns/1ps

module vlg_design #(
	parameter MSB = 3
)
(
	input i_clk,
	input i_rst_n,
	input i_en,
	input[MSB:0] i_data,
	output reg o_vld,
	output reg[MSB:0] o_gray
    );
	
always @(posedge i_clk) begin
	if (!i_rst_n)
		o_vld <= 'b0;
	else
		o_vld <= i_en;
end

always @(posedge i_clk) begin
	o_gray[MSB] <= i_data[MSB];
end

genvar i;

generate
	for (i = MSB-1; i>=0; i = i-1) begin
		always @(posedge i_clk) begin
			o_gray[i] <= i_data[i] ^ i_data[i+1];
		end
	end
endgenerate

endmodule

