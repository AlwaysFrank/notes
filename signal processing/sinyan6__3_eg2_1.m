% 求x(t)=e^(-2|t|)的傅里叶变换。
% 	采用fourier()函数进行计算，运行结果中的ω表示角频率w
clear all;close all;clc;
syms t;                           %定义符号变量
X=fourier(exp(-2*abs(t)));    %求解傅里叶变换表达式
subplot(2,1,1);ezplot(X);grid on;  %绘出傅里叶变换图像
t=-2.5:0.01:2.5;                %设置t的取值
x=exp(-2*abs(t));               %定义时域表达式
% x=subs(x,'t',t);                %数值代入符号变量
subplot(2,1,2);plot(t,x);
xlabel('t');title('x');grid on;   %绘出时域图像
