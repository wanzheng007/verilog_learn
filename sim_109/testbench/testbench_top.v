
`timescale 1ns/1ps

//����ģ��
module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		10		//ʱ����������Ϊ10ns��100MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
reg[3:0] i_pulse;
reg i_en;
wire[15:0] o_pulse_cnt1,o_pulse_cnt2;
wire[15:0] o_pulse_cnt3,o_pulse_cnt4;

////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
vlg_design uut_vlg_design(
	.i_clk(clk),
	.i_rst_n(rst_n),
	.i_pulse(i_pulse),
	.i_en(i_en),
	.o_pulse_cnt1(o_pulse_cnt1),
	.o_pulse_cnt2(o_pulse_cnt2),
	.o_pulse_cnt3(o_pulse_cnt3),
	.o_pulse_cnt4(o_pulse_cnt4)
    );	
	
////////////////////////////////////////////////////////////
//��λ��ʱ�Ӳ���

	//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin  //˳��ִ��
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//���Լ�������
integer i;  //�������

initial begin  //˳��ִ��
	i_pulse <= 'b0;
	i_en <= 1'b0;
	@(posedge rst_n);	//�ȴ���λ���
	
	@(posedge clk);

	repeat(10) begin @(posedge clk); end
	#4;

//��һ�β���
	i_en <= 1'b1;  //ʹ���ź����ߣ�����
	//50��ѭ��
	for (i = 0;i < 50;i = i + 1) begin
		#500;  //i_pulse <= 'b0����500ns
		i_pulse <= 4'b1110;  //����λ���ߣ���һλ����
		#300;  //i_pulse <= 4'b1110����300ns
		i_pulse <= 'b0;  //��λȫ����
	end
	i_en <= 1'b0;  //ʹ���ź�����
	#10_000;  //���10us

//�ڶ��β���
	i_en <= 1'b1;  //ʹ���ź����ߣ�����
	//69��ѭ��
	for (i = 0;i < 69;i = i + 1) begin
		#500;
		i_pulse <= 4'b0111;  //ǰ��λ���ߣ�����λ����
		#300;
		i_pulse <= 'b0;  //��λȫ����
	end
	i_en <= 1'b0;  //ʹ���ź�����
	#10_000;  //���10us

//�����β���
	i_en <= 1'b0;  //ʹ���ź����ͣ�������
	//15��ѭ��
	for (i = 0;i < 15;i = i + 1) begin
		#500;
		i_pulse <= 'b1;  //��λȫ��
		#300;
		i_pulse <= 'b0;  //��λȫ��
	end
	i_en <= 1'b0;
	#10_000;  //���10us

	//���Խ������ٱ���1000ns
	repeat(1000) begin @(posedge clk); end
	
	$stop;  //���Խ���
end


endmodule