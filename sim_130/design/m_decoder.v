
`timescale 1ns/1ps

module m_decoder(
	input i_clk,
	input i_rst_n,
    input i_rx_en,
	input[7:0] i_rx_data,
	output reg o_beep_en,
	output reg[31:0] o_beep_periord,
	output reg[31:0] o_beep_high,
	output reg[15:0] o_beep_num
	);

//帧头
localparam DATA_SOF1 = 8'haa;
localparam DATA_SOF2 = 8'h55;
localparam DATA_SOF3 = 8'ha5;
localparam DATA_SOF4 = 8'h5a;
//帧尾
localparam DATA_EOF1 = 8'hcc;
localparam DATA_EOF2 = 8'h33;
localparam DATA_EOF3 = 8'hc3;
localparam DATA_EOF4 = 8'h3c;
//状态
localparam IDLE = 4'd0;
localparam SOF1 = 4'd1;
localparam SOF2 = 4'd2;
localparam SOF3 = 4'd3;
localparam RXDB = 4'd4;
localparam EOF1 = 4'd5;
localparam EOF2 = 4'd6;
localparam EOF3 = 4'd7;
localparam EOF4 = 4'd8;
localparam DONE = 4'd9;

reg[3:0] r_cstate,r_nstate;
reg[3:0] r_bytecnt;

/////////////////////////////////////////////////////////
//时序逻辑状态切换
always @(posedge i_clk) begin
	if (!i_rst_n)
		r_cstate <= IDLE;
	else
		r_cstate <= r_nstate;
end

/////////////////////////////////////////////////////////
//组合逻辑状态切换
always @( *) begin
	case (r_cstate)
		IDLE: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_SOF1)
					r_nstate = SOF1;
				else r_nstate = IDLE;
			end
			else r_nstate = IDLE;
		end

		SOF1: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_SOF2)
					r_nstate = SOF2;
				else r_nstate = IDLE;
			end
			else r_nstate = SOF1;
		end

		SOF2: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_SOF3)
					r_nstate = SOF3;
				else r_nstate = IDLE;
			end
			else r_nstate = SOF2;
		end

		SOF3: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_SOF4)
					r_nstate = RXDB;
				else r_nstate = IDLE;
			end
			else r_nstate = SOF3;
		end

		RXDB: begin
			if (i_rx_en) begin
				if (r_bytecnt >= 4'd9)
					r_nstate = EOF1;
				else r_nstate = RXDB;
			end
			else r_nstate = RXDB;
		end

		EOF1: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_EOF1)
					r_nstate = EOF2;
				else r_nstate = IDLE;
			end
			else r_nstate = EOF1;
		end

		EOF2: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_EOF2)
					r_nstate = EOF3;
				else r_nstate = IDLE;
			end
			else r_nstate = EOF2;
		end

		EOF3: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_EOF3)
					r_nstate = EOF4;
				else r_nstate = IDLE;
			end
			else r_nstate = EOF3;
		end

		EOF4: begin
			if (i_rx_en) begin
				if (i_rx_data == DATA_EOF4)
					r_nstate = DONE;
				else r_nstate = IDLE;
			end
			else r_nstate = EOF4;
		end

		DONE: r_nstate = IDLE;
		default ;
	endcase
end

/////////////////////////////////////////////////////////
//对10个有效数据字节进行计数
always @(posedge i_clk) begin
	if (r_cstate == RXDB) begin
		if (i_rx_en)
			r_bytecnt <= r_bytecnt + 1;
		else r_bytecnt <= r_bytecnt;
	end
	else 
		r_bytecnt <= 'b0;
end

/////////////////////////////////////////////////////////
//对有效数据进行锁存（采集）
always @(posedge i_clk) begin
	if ((r_cstate == RXDB) && i_rx_en) begin
		case (r_bytecnt)
			4'd0: o_beep_periord[31:24] <= i_rx_data;
			4'd1: o_beep_periord[23:16] <= i_rx_data;
			4'd2: o_beep_periord[15:8] <= i_rx_data;
			4'd3: o_beep_periord[7:0] <= i_rx_data;
			
			4'd4: o_beep_high[31:24] <= i_rx_data;
			4'd5: o_beep_high[23:16] <= i_rx_data;
			4'd6: o_beep_high[15:8] <= i_rx_data;
			4'd7: o_beep_high[7:0] <= i_rx_data;

			4'd8: o_beep_num[15:8] <= i_rx_data;
			4'd9: o_beep_num[7:0] <= i_rx_data;
			default: ;
		endcase
	end
	else ;
		//! r_bytecnt <= 'b0;	//这个错误找了几个小时，搞得把其他的所有代码都看懂了
end

/////////////////////////////////////////////////////////
//有效数据使能信号产生
always @(posedge i_clk) begin
	if (!i_rst_n)
		o_beep_en <= 'b0;
	else if (r_cstate == DONE)
		o_beep_en <= 'b1;
	else
		o_beep_en <= 'b0;
end


endmodule

