
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input i_pulse,
	input i_en,
	output reg[15:0] o_pulse_cnt
    );

reg[1:0] r_pulse;
wire w_pulse_edge;

////////////////////////////////////////////////
//脉冲边沿检测逻辑
always @(posedge i_clk) begin
	if(!i_rst_n)
		r_pulse <= 2'b00;
	else
		r_pulse <= {r_pulse[0],i_pulse};
	//等效于以下两行代码
	//r_pulse[0] <= i_pulse;
	//r_pulse[1] <= r_pulse[0];
end

assign w_pulse_edge = r_pulse[0] & ~r_pulse[1];

//////////////////////////////////////////////
//脉冲计数逻辑
always @(posedge i_clk) begin
	if(i_en) begin
		if(w_pulse_edge)
			o_pulse_cnt <= o_pulse_cnt + 1;
		else
			o_pulse_cnt <= o_pulse_cnt;
	end
	else
		o_pulse_cnt <= 'b0;
end

endmodule

