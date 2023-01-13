
`timescale 1ns/1ps

module vlg_design(
	input i_clk,  //50MHz,20ns
	input i_rst_n,
	//input[3:0] i_data,
	output[3:0] o_gray
    );

localparam TIMER_1S_MAX_CNT = 32'd1_000_000_000 / 20;

/////////////////////////////////////////////////////////
//* 1s定时计数
reg[31:0] r_cnt;

always @(posedge i_clk) begin
	if (!i_rst_n)
		r_cnt <= 'b0;
	else if (r_cnt < (TIMER_1S_MAX_CNT - 1))
		r_cnt <= r_cnt + 1;
	else
		r_cnt <= 'b0;
end

/////////////////////////////////////////////////////////
//* 1s计数器
reg[3:0] r_second;

always @(posedge i_clk) begin
	if (!i_rst_n)
		r_second <= 'b0;
	else if (r_cnt == (TIMER_1S_MAX_CNT - 1))
		r_second <= r_second + 1;
	else ;
end

/////////////////////////////////////////////////////////
//* r_second译码为格雷码

reg[3:0] r_gray;

always @(posedge i_clk) begin
	if (!i_rst_n) r_gray <= 4'b0;
	else begin
		case (r_second)
			4'b0000: r_gray <= 4'b0000;  //0
			4'b0001: r_gray <= 4'b0001;  //1
			4'b0010: r_gray <= 4'b0011;  //2
			4'b0011: r_gray <= 4'b0010;  //3
			4'b0100: r_gray <= 4'b0110;  //4
			4'b0101: r_gray <= 4'b0111;  //5
			4'b0110: r_gray <= 4'b0101;  //6
			4'b0111: r_gray <= 4'b0100;  //7
			4'b1000: r_gray <= 4'b1100;  //8
			4'b1001: r_gray <= 4'b1101;  //9
			4'b1010: r_gray <= 4'b1111;  //10
			4'b1011: r_gray <= 4'b1110;  //11
			4'b1100: r_gray <= 4'b1010;  //12
			4'b1101: r_gray <= 4'b1011;  //13
			4'b1110: r_gray <= 4'b1001;  //14
			4'b1111: r_gray <= 4'b1000;  //15
			default ;
		endcase
	end
end
	

assign o_gray = r_gray;

endmodule

