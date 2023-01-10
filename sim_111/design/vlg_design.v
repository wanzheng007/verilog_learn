
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input i_pulse,
	input i_en,
	output o_vld,
	output[15:0] o_pulse_cnt
    );

reg[1:0] r_pulse;
wire w_pulse_edge;

////////////////////////////////////////////////
//脉冲边沿检测逻辑
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_pulse <= 2'b00;
	else
		r_pulse <= {r_pulse[0],i_pulse};
	//等效于以下两行代码
	//r_pulse[0] <= i_pulse;
	//r_pulse[1] <= r_pulse[0];
end

assign w_pulse_edge = r_pulse[0] & ~r_pulse[1];

///////////////////////////////////////////////
//输出信号产生
reg r_flag;

always @(posedge i_clk) begin
	if (!i_rst_n)
		r_flag <= 'b0;
	else if (!i_en)
		r_flag <= 'b0;
	else if (w_pulse_edge)
		r_flag <= 'b1;
	else
		r_flag <= r_flag; 
end

assign o_vld = w_pulse_edge & r_flag;

//////////////////////////////////////////////
//脉冲计数逻辑
reg[15:0] r_pulse_cnt;

always @(posedge i_clk) begin
	if (!i_en) 
		r_pulse_cnt <= 'b0;
	else if (w_pulse_edge)
		r_pulse_cnt <= 'b0;
	else
		r_pulse_cnt <= r_pulse_cnt + 1;
end

assign o_pulse_cnt = r_pulse_cnt + 1'b1;

endmodule

