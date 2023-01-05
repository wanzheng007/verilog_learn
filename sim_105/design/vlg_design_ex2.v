
`timescale 1ns/1ps

module vlg_design_ex2(
	input i_clk,
	input i_rst_n,
	input[3:0] i_cnt,
	output[3:0] o_cnt1,o_cnt2
    );
	
reg[3:0] r_cnt1,r_cnt2;

always @(posedge i_clk) begin
	if (!i_rst_n) begin
		r_cnt1 <= 'b0;
		r_cnt2 <= 'b0;
	end
	else begin
		r_cnt1 <= i_cnt;
		r_cnt2 <= i_cnt;
	end
end

assign o_cnt1 = r_cnt1;
assign o_cnt2 = r_cnt2;

endmodule

