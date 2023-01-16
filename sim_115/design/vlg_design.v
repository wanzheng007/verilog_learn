
`timescale 1ns/1ps

module vlg_design(
	input i_clk,  //50MHz,20ns
	input i_rst_n,
	input i_en,
	input[9:0] i_data,
	output o_vld,
	output[15:0] o_sin
    );

reg[1:0] r_vld;

always @(posedge i_clk) begin
	if (!i_rst_n)
		r_vld <= 2'b00;
	else
		r_vld <= {r_vld[0],i_en};
end

assign o_vld = r_vld[1];

blk_mem_gen_0 uut_blk_mem_gen_0 (
  .clka(i_clk),    // input wire clka
  .addra(i_data),  // input wire [9 : 0] addra
  .douta(o_sin)  // output wire [15 : 0] douta
);

endmodule

