% 求信号、x1（t）=u（t），x2（t）=e-3 tu（t）之司的卷积。
% 因为x2（t）=e- 3 tu（t）是一个持续时间无限长的信号，
% 而计算机的数值计算不可能计算真正无限长的时间信号，
% 所以在进行x2（t）=e-3tu（t）的抽样离散化时，所取得时间范围让x2（t）=e-3tu（t）
% 衰减到足够小就可以了，本例可取t=2.1，
clear all ;close all;clc ;
fs=1000 ;
t=-1.1:1/fs:2.1;
x11=(t>=0)*1.0;%定义阶跃函数，当t>=0时，x11=1，否则为0   乘1.0是为了转化为双精度值
x12=exp(-3 * t).*(t>=0);
y1=conv(x11,x12)/fs ;
n=length(y1) ;
tt=(0:n-1)/fs-2.2;%定义新序列的时间范围
subplot(2,2,1) ;plot(t, x11); grid on; title( 'x1 ') 
subplot(2,2,2); plot(t, x12); grid on ;title( 'x2 ') 
subplot(2,1,2) ;plot(tt, y1) ;grid on ;title( 'conv(x1, x2) ')
