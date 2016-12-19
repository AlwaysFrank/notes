clear all;close all;clc;
syms t w;
x1=(heaviside(t+1/8)-heaviside(t-1/8));   %����δƵ�Ƶľ��������ź�x1
Xw1=simple(fourier(x1));                     %���ź�x1�ĸ���Ҷ�任Xw1
subplot(3,1,1);
ezplot(abs(Xw1),[-24*pi 24*pi]);grid on;%��wΪ�����꣬�����ź�x1��Ƶ��Xw1
x2=cos(16*pi*t)*x1;                           %����Ƶ�ƺ�ľ��������ź�x2
Xw2=simple(fourier(x2));                    %���ź�x2�ĸ���Ҷ�任Xw2
subplot(3,1,2);
ezplot(abs(Xw2),[-24*pi 24*pi]);grid on;%��wΪ�����꣬�����ź�x2��Ƶ��Xw1
Xf2=subs(Xw2,'w','2*pi*f');           %��Ƶ��f�����Ƶ��w
subplot(3,1,3);
ezplot(abs(Xf2),[-12 12]);grid on;        %��fΪ�����꣬����Ƶ�ƺ��Ƶ��
