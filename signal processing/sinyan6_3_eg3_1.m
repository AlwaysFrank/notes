clear all;close all;clc;         
syms t w;
x1=heaviside(t+1)-heaviside(t-1);        %����x1��ʱ����
x2=heaviside(t+2)-heaviside(t-2);        %����x2��ʱ����
x=x1+x2;                                   %������Ӻ���ź�x��ʱ����
X1=simple(fourier(x1,t,w))              %����x1�ĸ���Ҷ�任X1
subplot(2,2,1);ezplot(X1);grid on;    %����X1��ͼ��
X2=simple(fourier(x2,t,w))              %����x2�ĸ���Ҷ�任X2
subplot(2,2,2);ezplot(X2);grid on;    %����X2��ͼ��
X=simple(fourier(x,t,w))                %����x�ĸ���Ҷ�任X 
subplot(2,2,3);ezplot(X1+X2);          %����X��ͼ��
title('X');grid on;
subplot(2,2,4);ezplot(X1+X2);          %����X1+X2��ͼ��
title('X1+X2');grid on;
