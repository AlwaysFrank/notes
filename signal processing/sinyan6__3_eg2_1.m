% ��x(t)=e^(-2|t|)�ĸ���Ҷ�任��
% 	����fourier()�������м��㣬���н���еĦر�ʾ��Ƶ��w
clear all;close all;clc;
syms t;                           %������ű���
X=fourier(exp(-2*abs(t)));    %��⸵��Ҷ�任���ʽ
subplot(2,1,1);ezplot(X);grid on;  %�������Ҷ�任ͼ��
t=-2.5:0.01:2.5;                %����t��ȡֵ
x=exp(-2*abs(t));               %����ʱ����ʽ
% x=subs(x,'t',t);                %��ֵ������ű���
subplot(2,1,2);plot(t,x);
xlabel('t');title('x');grid on;   %���ʱ��ͼ��
