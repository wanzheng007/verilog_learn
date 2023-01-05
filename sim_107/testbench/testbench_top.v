
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		10		//ʱ����������Ϊ10ns��100MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
reg i_pulse;
wire o_rise_edge;

////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_pulse(i_pulse),
	.o_rise_edge(o_rise_edge)
    );	
	
////////////////////////////////////////////////////////////
//��λ��ʱ�Ӳ���

	//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//���Լ�������

initial begin
	i_pulse <= 1'b0;
	@(posedge rst_n);	//�ȴ���λ���
	
	@(posedge clk);

	repeat(10) begin @(posedge clk); end
	#4;
	i_pulse <= 1'b1;
	
	repeat(10) begin @(posedge clk); end
	#4;
	i_pulse <= 1'b0;

	repeat(100) begin @(posedge clk); end
	
	$stop;
end


endmodule






