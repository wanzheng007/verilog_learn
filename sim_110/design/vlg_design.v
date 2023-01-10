
`timescale 1ns/1ps

//* 顶层模块：十六路脉冲检测和计数
module vlg_design(
	input i_clk,
	input i_rst_n,
	input[15:0] i_pulse,
	input i_en,
	output[15:0] o_pulse_cnt0,
	output[15:0] o_pulse_cnt1,
	output[15:0] o_pulse_cnt2,
	output[15:0] o_pulse_cnt3,
	output[15:0] o_pulse_cnt4,
	output[15:0] o_pulse_cnt5,
	output[15:0] o_pulse_cnt6,
	output[15:0] o_pulse_cnt7,
	output[15:0] o_pulse_cnt8,
	output[15:0] o_pulse_cnt9,
	output[15:0] o_pulse_cnta,
	output[15:0] o_pulse_cntb,
	output[15:0] o_pulse_cntc,
	output[15:0] o_pulse_cntd,
	output[15:0] o_pulse_cnte,
	output[15:0] o_pulse_cntf
    );

//
wire[15:0] r_pulse_cnt[15:0];
genvar i;

generate
	for (i = 0; i < 16; i = i + 1) begin
		pulse_counter uut_pulse_counter(
			.i_clk			(i_clk),
			.i_rst_n	   	(i_rst_n),
			.i_pulse		(i_pulse[i]),
			.i_en			(i_en),
			.o_pulse_cnt	(r_pulse_cnt[i])
    	);
	end
endgenerate

assign o_pulse_cnt0 = r_pulse_cnt[0];
assign o_pulse_cnt1 = r_pulse_cnt[1];
assign o_pulse_cnt2 = r_pulse_cnt[2];
assign o_pulse_cnt3 = r_pulse_cnt[3];
assign o_pulse_cnt4 = r_pulse_cnt[4];
assign o_pulse_cnt5 = r_pulse_cnt[5];
assign o_pulse_cnt6 = r_pulse_cnt[6];
assign o_pulse_cnt7 = r_pulse_cnt[7];
assign o_pulse_cnt8 = r_pulse_cnt[8];
assign o_pulse_cnt9 = r_pulse_cnt[9];
assign o_pulse_cnta = r_pulse_cnt[10];
assign o_pulse_cntb = r_pulse_cnt[11];
assign o_pulse_cntc = r_pulse_cnt[12];
assign o_pulse_cntd = r_pulse_cnt[13];
assign o_pulse_cnte = r_pulse_cnt[14];
assign o_pulse_cntf = r_pulse_cnt[15];


endmodule