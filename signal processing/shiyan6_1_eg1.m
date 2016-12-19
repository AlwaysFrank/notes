% 离散正弦序列的表示与连续正弦序列的表示类似，只不过用stem（）
% 函数代替plot（）函数进行绘图。
%
clear all;                  %清除所有工作空间中的变量
close all ;                 %关闭所有程序运行产生的窗口@
clc;                        %清除命令窗口的记录
A=1 ; w0=1; phi=pi/4 ;
t=0:0.01:10;                %定义取样区间，并采用较小的取样间隔
xt=A* sin(w0* t + phi) ;    %定义xt表达式
subplot(2,1,1);plot(t, xt); %绘出连续信号xt的图
title('连续时间信号') ;      %添加标题
xlabel('t');              %添加x轴坐标名称
ylabel('xt');             %添加y轴坐标名称
n=0:10 ;
xn=A* sin(w0* n + phi);      %定义xn表达式
subplot(2,1,2) ;stem(n, xn) ;%绘出离散信号xn的图
title('离散时间信号') ;       %添加标题
xlabel( 'n') ;              %添加x轴坐标名称
ylabel('xn') ;             %添加y轴坐标名称
