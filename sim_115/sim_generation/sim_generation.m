
%����coe�ļ�
coe_file = fopen ('sin_rom.coe','wt');

%���0-2*pi��Χ�ڵ�1024��sin����ֵ������Ŵ�65536��
PARA_TIM = 2 * pi;  %��0��PARA_TIMΪsinֵ����ķ�Χ
PARA_NUM = 1024;    %��Ҫ�����sinֵ����
PARA_ZOOM = 65536;  %�Ŵ���

%coe�ļ����ļ�ͷ��Ϣ
fprintf (coe_file,'MEMORY_INITIALIZATION_RADIX = 10;\n');
fprintf (coe_file,'MEMORY_INITIALIZATION_VECTOR = \n');

%coe��������
%ȡ0~2*pi�����sinֵ�����ҽ�ȡֵ���Ƶ�0��������
for i = 0:1:(PARA_NUM - 1)
    a = (sin(PARA_TIM * i / PARA_NUM)) * PARA_ZOOM / 2 + PARA_ZOOM / 2;
    if a < 0
        a = 0;
    elseif a > 65535
        a = 65535;
    end

    if i == PARA_NUM -1 
        fprintf(coe_file,'%.0f;\n',a);
    else
        fprintf(coe_file,'%.0f,\n',a);
    end
end

x1 = 0:1:(PARA_NUM - 1);
y1 = (sin(PARA_TIM * x1 / PARA_NUM)) * PARA_ZOOM / 2 + PARA_ZOOM / 2;

plot(x1,y1,'k-');
axis([0,1023,0,65536]);
