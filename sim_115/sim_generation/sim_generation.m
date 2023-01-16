
%创建coe文件
coe_file = fopen ('sin_rom.coe','wt');

%输出0-2*pi范围内的1024个sin计算值，结果放大65536倍
PARA_TIM = 2 * pi;  %从0到PARA_TIM为sin值计算的范围
PARA_NUM = 1024;    %需要计算的sin值数量
PARA_ZOOM = 65536;  %放大倍数

%coe文件的文件头信息
fprintf (coe_file,'MEMORY_INITIALIZATION_RADIX = 10;\n');
fprintf (coe_file,'MEMORY_INITIALIZATION_VECTOR = \n');

%coe数据内容
%取0~2*pi区间的sin值，并且将取值上移到0坐标以上
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
