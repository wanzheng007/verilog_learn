
`timescale 1ns/1ps

module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		20		//ʱ����������Ϊ20ns��50MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
//reg[3:0] i_data;
wire[3:0] o_gray;


////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
//	.i_data(i_data),
	.o_gray(o_gray)
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
integer i;

initial begin

	@(posedge rst_n);	//�ȴ���λ���
	$monitor ("o_gray is %b at %0dns",o_gray,$time);
	
	$stop;
end


endmodule






