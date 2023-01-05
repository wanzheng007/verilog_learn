
`timescale 1ns/1ps

module vlg_design(
	input clk,   //100MHz
	input rst_n,
	output outclk
    );

`define SIMULATION 

`ifdef SIMULATION
localparam TIMER_CNT_1S = 30'd1_000 - 1'b1;   //1s计数最大值
localparam TIMER_CNT_10MS = 30'd10 - 1'b1;   //10ms计数最大值
`else
localparam TIMER_CNT_1S = 30'd100_000_000 - 1'b1;   //1s计数最大值
localparam TIMER_CNT_10MS = 30'd1_000_000 - 1'b1;   //10ms计数最大值
`endif 
///////////////////////////////////////////////////////////
//1s周期计数器
reg [29:0] cnt;

always @(posedge clk) begin
	if  (!rst_n)
		cnt <= 'b0;
	else if (cnt < TIMER_CNT_1S)
		cnt <= cnt + 1'b1;
	else
		cnt <= 'b0;
end

//////////////////////////////////////////////////////////
//10ms使能信号产生
reg en_10ms;

always @(posedge clk) begin
	if (!rst_n)
		en_10ms <= 'b0;
	else if (cnt <= TIMER_CNT_10MS)
		en_10ms <= 'b1;
	else 
		en_10ms <= 'b0;
end

/////////////////////////////////////////////////////////
//例化BUFGCE原语
BUFGCE BUFGCE_inst (
	.O(outclk),   // 1-bit output: Clock output
	.CE(en_10ms), // 1-bit input: Clock enable input for I0
	.I(clk)    // 1-bit input: Primary clock
);

endmodule

