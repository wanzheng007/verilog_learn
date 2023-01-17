
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	
parameter GRAY_MSB = 7;

////////////////////////////////////////////////////////////
//接口申明
	
reg clk;
reg rst_n;
reg i_en;
reg[GRAY_MSB:0] i_data;
wire o_vld;
wire[GRAY_MSB:0] o_gray;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
vlg_design #(
	.MSB(GRAY_MSB)
)
uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_en(i_en),
	.i_data(i_data),
	.o_vld(o_vld),
	.o_gray(o_gray)
    );	
	
////////////////////////////////////////////////////////////
//复位和时钟产生

	//时钟和复位初始化、复位产生
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//测试激励产生

initial begin
	i_en <= 'b0;
	i_data <= 'b0;
	$display("The value of GRAY_MSB is %0d",GRAY_MSB);
	@(posedge rst_n);	//等待复位完成
	
	@(posedge clk);
	i_en <= 'b1;
	i_data <= 'b0;

	repeat(2**(GRAY_MSB+1)-1) begin
		@(posedge clk);
		i_en <= 'b1;
		i_data <= i_data + 1;
	end
	
	@(posedge clk);
	i_en <= 'b0;

	#1000;	
	// repeat(1000) begin
	//   @(posedge clk);
	// end
	$stop;

end

always @(posedge clk) begin
	if (o_vld)
		$display("%b",o_gray);
	else ;
end

endmodule






