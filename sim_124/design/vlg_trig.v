
`timescale 1ns/1ps

module vlg_trig (
	input i_clk,
	input i_rst_n,
	input i_clk_en,
	output reg o_trig
    );
	
localparam P_TRIG_PERIORD_MAX 	= 100_000 - 1;	//100ms的计数最大值
localparam P_TRIG_HIGH_MAX 		= 10;	//10us高脉冲保持时间
reg[16:0] r_tricnt;

//////////////////////////////////////////////////
//100ms周期计数
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_tricnt <= 'b0;
	else if (i_clk_en) begin
		if (r_tricnt < P_TRIG_PERIORD_MAX)
			r_tricnt <= r_tricnt + 1;
		else
			r_tricnt <= 'b0;
	end
	else ;
end

//////////////////////////////////////////////////
//产生保持10us的高脉冲o_trig信号
always @(posedge i_clk) begin
	if (!i_rst_n)
		o_trig <= 1'b0;
	else if ((r_tricnt > 'b0) && (r_tricnt < P_TRIG_HIGH_MAX))
		o_trig <= 1'b1;
	else
		o_trig <= 1'b0;
end

endmodule

