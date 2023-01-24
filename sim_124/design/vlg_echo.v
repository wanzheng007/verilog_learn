
`timescale 1ns/1ps

module vlg_echo (
	input i_clk,
	input i_rst_n,
	input i_clk_en,
	input i_echo,
	output reg[15:0] o_t_us
    );

reg[1:0] r_echo;
wire pos_echo,neg_echo;
reg r_cnt_en;
reg[15:0] r_echo_cnt;

/*
* 超声波测距模块的量程是2mm~4500mm
* 根据公式s=0.173*t，t=s/0.173
* 得出11<t<26011
*/
//////////////////////////////////////////////
//获得i_echo的上升沿和下降沿脉冲信号
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_echo <= 'b0;
	else
		r_echo <= {r_echo[0],i_echo};
end

assign pos_echo = ~r_echo[1] & r_echo[0];
assign neg_echo = r_echo[1] & ~r_echo[0];

//////////////////////////////////////////////
//获得计数使能信号r_cnt_en
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_cnt_en <= 'b0;
	else if (pos_echo)
		r_cnt_en <= 'b1;
	else if (neg_echo)
		r_cnt_en <= 'b0;
	else ;
end

//////////////////////////////////////////////
//对i_echo信号的高电平保持时间进行1us为单位的计数
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_echo_cnt <= 'b0;
	else if (!r_cnt_en)
		r_echo_cnt <= 'b0;
	else if (i_clk_en)
		r_echo_cnt <= r_echo_cnt + 1;
	else ;
end

//////////////////////////////////////////////
//对r_echo_cnt计数最大值做锁存
always @(posedge i_clk) begin
	if (!i_rst_n)
		o_t_us <= 'b0;
	else if (neg_echo)
		o_t_us <= r_echo_cnt;
	else ;
end


endmodule

