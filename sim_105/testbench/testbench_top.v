
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg[3:0] i_cnt;
wire[3:0] o_cnt1,o_cnt2;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
/*	
vlg_design_ex1 uut_vlg_design_ex1(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.o_cnt1(o_cnt1),
	.o_cnt2(o_cnt2)
);
*/	

vlg_design_ex2 uut_vlg_design_ex2(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_cnt(i_cnt),
	.o_cnt1(o_cnt1),
	.o_cnt2(o_cnt2)
);	

////////////////////////////////////////////////////////////
//复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin
	clk <= 0;
	rst_n <= 0;
	i_cnt <= 0;
	#1000;
	rst_n <= 1;
	
	@(posedge clk); #2;
	i_cnt <= 4'd1;
	@(posedge clk); #2;
	i_cnt <= 4'd2;
	@(posedge clk); #2;
	i_cnt <= 4'd3;
	@(posedge clk); #2;
	i_cnt <= 4'd4;

end
	
	//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//测试激励产生

initial begin

	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);

	repeat(300000) begin
		@(posedge clk);
	end
	
	$stop;
end


endmodule






