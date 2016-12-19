clear all;close all;clc;
syms t w;
x1=(heaviside(t+1/8)-heaviside(t-1/8));   %定义未频移的矩形脉冲信号x1
Xw1=simple(fourier(x1));                     %求信号x1的傅里叶变换Xw1
subplot(3,1,1);
ezplot(abs(Xw1),[-24*pi 24*pi]);grid on;%以w为横坐标，绘制信号x1的频谱Xw1
x2=cos(16*pi*t)*x1;                           %定义频移后的矩形脉冲信号x2
Xw2=simple(fourier(x2));                    %求信号x2的傅里叶变换Xw2
subplot(3,1,2);
ezplot(abs(Xw2),[-24*pi 24*pi]);grid on;%以w为横坐标，绘制信号x2的频谱Xw1
Xf2=subs(Xw2,'w','2*pi*f');           %用频率f代替角频率w
subplot(3,1,3);
ezplot(abs(Xf2),[-12 12]);grid on;        %以f为横坐标，绘制频移后的频谱
