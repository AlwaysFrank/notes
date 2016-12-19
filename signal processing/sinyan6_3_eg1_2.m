% 给定一个周期T=4,脉宽τ=1，幅度A=1的矩形脉冲信号，用MATLAB绘制其频谱。
% 本例用int()函数进行编程，首先很据指数形式傅里叶系数表达式X_n=1/T ∫_(t_0)^(t_0+T)?
%    〖x(t)e^(-jnwt) dt〗求出的傅里叶系数的符号表达式，然后用subs()函数取代符号变量为具体数值。一般的频谱图需要两幅，但本例中的Xn为实函数，因此频谱图由一幅图即可绘成。
clear all;close all;clc;
syms t n;                      %定义符号
T=4;tao=1;A=1;
x=A*exp(-j*n*2*pi/T*t);
Xn=int(x,t,-tao/2,tao/2)/T;    %计算傅里叶系数
Xn=simple(Xn);               %简化Fn表达式
n=[-20:-1,realmin,1:20];       %设置n的取值，由于n为0时极限情况
                               %取接近0的数realmin近似绘制
Xn=subs(Xn,'n',n);             %用数值代入符号变量
stem(n,Xn,'filled');title('Xn');grid on;
