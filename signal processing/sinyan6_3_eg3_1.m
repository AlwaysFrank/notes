clear all;close all;clc;         
syms t w;
x1=heaviside(t+1)-heaviside(t-1);        %定义x1的时域波形
x2=heaviside(t+2)-heaviside(t-2);        %定义x2的时域波形
x=x1+x2;                                   %定义相加后的信号x的时域波形
X1=simple(fourier(x1,t,w))              %计算x1的傅里叶变换X1
subplot(2,2,1);ezplot(X1);grid on;    %绘制X1的图形
X2=simple(fourier(x2,t,w))              %计算x2的傅里叶变换X2
subplot(2,2,2);ezplot(X2);grid on;    %绘制X2的图形
X=simple(fourier(x,t,w))                %计算x的傅里叶变换X 
subplot(2,2,3);ezplot(X1+X2);          %绘制X的图形
title('X');grid on;
subplot(2,2,4);ezplot(X1+X2);          %绘制X1+X2的图形
title('X1+X2');grid on;
