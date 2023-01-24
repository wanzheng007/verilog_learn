
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input i_echo,
	output o_trig
    );

localparam P_CLK_PERIORD = 20;
wire w_clk_en;
wire[15:0] w_t_us;
wire[13:0] o_s_mm;
///////////////////////////////////////////////////////
//使能时钟产生模块
vlg_en #(
	.P_CLK_PERIORD(P_CLK_PERIORD)	//i_clk的时钟周期为20ns
	)
uut_vlg_en(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.o_clk_en(w_clk_en)
    );

///////////////////////////////////////////////////////
//产生超声波测距模块的触发信号o_trig
vlg_trig uut_vlg_trig(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_clk_en(w_clk_en),
	.o_trig(o_trig)
    );

///////////////////////////////////////////////////////
//超声波测距模块的回响信号i_echo的高电平时间采集
vlg_echo uut_vlg_echo(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_clk_en(w_clk_en),
	.i_echo(i_echo),
	.o_t_us(w_t_us)
    );

///////////////////////////////////////////////////////
//进行时间和距离的转换运算s=0.179*t
vlg_cal uut_vlg_cal(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_t_us(w_t_us),
	.o_s_mm(o_s_mm)
    );

///////////////////////////////////////////////////////
//VIO IP例化
debug_vio uut_debug_vio (
  .clk(i_clk),              // input wire clk
  .probe_in0(o_s_mm)  // input wire [13 : 0] probe_in0
);

endmodule

