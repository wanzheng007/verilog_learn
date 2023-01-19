
`timescale 1ns/1ps

module vlg_design(
	input i_clk,			//50MHz(20ns)时钟
	input i_rst_n,			//复位
	input i_en,				//使能
	input[31:0] i_periord,	//周期，单位：20ns
	input[31:0] i_high,		//高电平事件，单位：20ns
	input[15:0] i_times,	//次数
	output reg o_pwm		//PWM信号
    );

reg[1:0] r_en;
wire w_pos_en;
wire w_end_en;
reg r_cnt_en;		//内部各个计数器工作的使能信号
reg[31:0] r_pcnt;	//周期计数器
reg[15:0] r_tcnt;	//周期次数的计数器

//////////////////////////////////////////////////////
//产生i_en的上升沿标志信号
always @(posedge i_clk) begin
	r_en <= {r_en[0],i_en};
end

assign w_pos_en = ~r_en[1] & r_en[0];

//////////////////////////////////////////////////////
//产生
assign w_end_en = (r_pcnt == (i_periord-1)) && (r_tcnt == (i_times-1));

//////////////////////////////////////////////////////
//产生内部各个计数器工作的使能信号
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_cnt_en <= 1'b0;
	else if (w_pos_en)
		r_cnt_en <= 1'b1;
	else if (w_end_en)
		r_cnt_en <= 1'b0;
	else ;
end

//////////////////////////////////////////////////////
//周期计数
always @(posedge i_clk) begin
	if (!r_cnt_en)
		r_pcnt <= 'b0;
	else if (r_pcnt < (i_periord-1))
		r_pcnt <= r_pcnt + 1;
	else 
		r_pcnt <= 'b0;
end

//////////////////////////////////////////////////////
//周期次数计数
always @(posedge i_clk) begin
	if (!r_cnt_en)
		r_tcnt <= 'b0;
	else if (r_pcnt < (i_periord-1))
		r_tcnt <= r_tcnt + 1;
	else ;
end

//////////////////////////////////////////////////////
//输出PWM波形
always @(posedge i_clk) begin
	if (!i_rst_n)
		o_pwm <= 1'b0;
	else if ((r_pcnt > 32'b0) && (r_pcnt < i_high))
		o_pwm <= 1'b1;
	else
		o_pwm <= 1'b0;
end

endmodule

