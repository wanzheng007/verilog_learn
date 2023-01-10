
`timescale 1ns/1ps

//顶层模块：四路脉冲检测和计数
module vlg_design(
	input i_clk,
	input i_rst_n,
	input[3:0] i_pulse,
	input i_en,
	output[15:0] o_pulse_cnt1,o_pulse_cnt2,
	output[15:0] o_pulse_cnt3,o_pulse_cnt4
    );

//重复写四次例化
pulse_counter uut1_pulse_counter(
	.i_clk			(i_clk),
	.i_rst_n		(i_rst_n),
	.i_pulse		(i_pulse[0]),
	.i_en			(i_en),
	.o_pulse_cnt	(o_pulse_cnt1)
    );

pulse_counter uu2_pulse_counter(
	.i_clk			(i_clk),
	.i_rst_n		(i_rst_n),
	.i_pulse		(i_pulse[1]),
	.i_en			(i_en),
	.o_pulse_cnt	(o_pulse_cnt2)
    );

pulse_counter uu3_pulse_counter(
	.i_clk			(i_clk),
	.i_rst_n		(i_rst_n),
	.i_pulse		(i_pulse[2]),
	.i_en			(i_en),
	.o_pulse_cnt	(o_pulse_cnt3)
    );

pulse_counter uu4_pulse_counter(
	.i_clk			(i_clk),
	.i_rst_n		(i_rst_n),
	.i_pulse		(i_pulse[3]),
	.i_en			(i_en),
	.o_pulse_cnt	(o_pulse_cnt4)
    );

//多次重复例化同一个模块，可以使用for循环

endmodule