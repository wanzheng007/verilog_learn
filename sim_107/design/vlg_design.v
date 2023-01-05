
`timescale 1ns/1ps

module vlg_design(
	input i_clk,
	input i_rst_n,
	input i_pulse,
	output o_rise_edge
    );
	
reg[1:0] r_pulse;
wire r_pulse1_invert;

always @(posedge i_clk) begin
	if(!i_rst_n)
		r_pulse <= 2'b00;
	else
		r_pulse <= {r_pulse[0],i_pulse};
	//等效于以下两行代码
	//r_pulse[0] <= i_pulse;
	//r_pulse[1] <= r_pulse[0];
end

assign r_pulse1_invert = ~r_pulse[1];

assign o_rise_edge = r_pulse[0] & r_pulse1_invert;

endmodule

