
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		20		//时钟周期设置为20ns（50MHz）	
parameter UART_BPS_RATE = 115200;
parameter BPS_DLY_BIT = 1000000000/UART_BPS_RATE;
////////////////////////////////////////////////////////////
//接口申明
	
reg i_clk;
reg i_rst_n;
reg i_uart_rx;
/*
wire w_bps_en;
wire w_bps_done;
wire w_rx_en;
wire[7:0] w_rx_data;
wire o_beep_en;
wire[31:0] o_beep_periord;
wire[31:0] o_beep_high;
wire[15:0] o_beep_num;
*/
wire o_pwm;
////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design uut_vlg_design(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_uart_rx(i_uart_rx),
	.o_pwm(o_pwm)
    );	

/*
m_bps #(
	.UART_BPS_RATE(UART_BPS_RATE),	//串口波特率设置（<=115200）
	.CLK_PERIORD(`CLK_PERIORD)	//时钟周期设置，单位：ns	
)uut_m_bps(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_bps_en(w_bps_en),
	.o_bps_done(w_bps_done)
    );
m_s2p uut_m_s2p(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
	.i_uart_rx(i_uart_rx),
	.i_bps_done(w_bps_done),
	.o_bps_en(w_bps_en),
	.o_rx_en(w_rx_en),
	.o_rx_data(w_rx_data)
	);
m_decoder uut_m_decoder(
	.i_clk(i_clk),
	.i_rst_n(i_rst_n),
    .i_rx_en(w_rx_en),
	.i_rx_data(w_rx_data),
	.o_beep_en(o_beep_en),
	.o_beep_periord(o_beep_periord),
	.o_beep_high(o_beep_high),
	.o_beep_num(o_beep_num)
	);
*/

////////////////////////////////////////////////////////////
//复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin
	i_clk <= 0;
	i_rst_n <= 0;
	#1000;
	i_rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) i_clk = ~i_clk;	

////////////////////////////////////////////////////////////
//测试激励产生

initial begin
	i_uart_rx <= 'b1;
	@(posedge i_rst_n);	//等待复位完成
	
	@(posedge i_clk);

	#100_000;
	task_cmd_tx(32'd1000,32'd100,16'd5);
	#1_000_000;
	task_cmd_tx(32'd5000,32'd1000,32'd5);	//100us/20us

	#1_000_000;
	$stop;
end

//模拟一次UART传输的任务
integer i;
task task_uart_tx;
	input[7:0] tx_db;
	begin
		i_uart_rx <= 'b0;
		#BPS_DLY_BIT;
		for (i = 0;i < 8;i = i+1) begin
			i_uart_rx <= tx_db[i];
			#BPS_DLY_BIT;
		end
		i_uart_rx <= 'b1;
		#BPS_DLY_BIT;
	end
endtask

//模拟一次完整的UART命令帧
task task_cmd_tx;
	input[31:0] tx_beep_periord;
	input[31:0] tx_beep_high;
	input[15:0] tx_beep_num;
	begin
		task_uart_tx(8'haa);
		task_uart_tx(8'h55);
		task_uart_tx(8'ha5);
		task_uart_tx(8'h5a);

		task_uart_tx(tx_beep_periord[31:24]);
		task_uart_tx(tx_beep_periord[23:16]);
		task_uart_tx(tx_beep_periord[15:8]);
		task_uart_tx(tx_beep_periord[7:0]);

		task_uart_tx(tx_beep_high[31:24]);
		task_uart_tx(tx_beep_high[23:16]);
		task_uart_tx(tx_beep_high[15:8]);
		task_uart_tx(tx_beep_high[7:0]);

		task_uart_tx(tx_beep_num[15:8]);
		task_uart_tx(tx_beep_num[7:0]);

		task_uart_tx(8'hcc);
		task_uart_tx(8'h33);
		task_uart_tx(8'hc3);
		task_uart_tx(8'h3c);
	end
endtask
/*
always @(i_clk) begin
	if (o_beep_en)
		$display("o_beep_periord = %x,o_beep_high = %x,o_beep_num = %x",
		o_beep_periord,o_beep_high,o_beep_num);
	else ;
end
*/
endmodule
