
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input i_uart_rx,
	output o_pwm
    );

//参数定义
`define CLK_PERIORD		20		//时钟周期设置为20ns（50MHz）	
parameter UART_BPS_RATE = 115200;	//串口波特率设置（<=115200）

///////////////////////////////////////
//接口声明
wire w_bps_en;
wire w_bps_done;
wire w_rx_en;
wire[7:0] w_rx_data;
wire w_beep_en;
wire[31:0] w_beep_periord;
wire[31:0] w_beep_high;
wire[15:0] w_beep_num;

////////////////////////////////////////////////////
//串口波特率控制模块例化
m_bps #(
	.UART_BPS_RATE(UART_BPS_RATE),	
	.CLK_PERIORD(`CLK_PERIORD)	//时钟周期设置，单位：ns	
)
uut_m_bps(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_bps_en(w_bps_en),
	.o_bps_done(w_bps_done)
    );
//串口数据串并转换模块例化
m_s2p uut_m_s2p(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_uart_rx(i_uart_rx),
	.i_bps_done(w_bps_done),
	.o_bps_en(w_bps_en),
	.o_rx_en(w_rx_en),
	.o_rx_data(w_rx_data)
	);
//串口指令帧解码模块例化
m_decoder uut_m_decoder(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
    .i_rx_en(w_rx_en),
	.i_rx_data(w_rx_data),
	.o_beep_en(w_beep_en),
	.o_beep_periord(w_beep_periord),
	.o_beep_high(w_beep_high),
	.o_beep_num(w_beep_num)
	);
//PWM蜂鸣器控制模块例化
m_beep uut_m_beep(
	.i_clk		(i_clk),
	.i_rst_n	(i_rst_n),
	.i_en		(w_beep_en),
	.i_periord	(w_beep_periord),
	.i_high		(w_beep_high),
	.i_times	(w_beep_num),
	.o_pwm		(o_pwm)
    );	




endmodule

