% 求y=tripuls（t,4,0.5）的微分
clear all ;close all;clc ;
h=0.001 ;
t=-3:h:3 ;
y=tripuls(t, 4,0.5) %定义y的波形
y1=diff(y)/h;%对y进行微分
subplot(2,1,1); 
plot(t, y) ;
grid on ;
title( 'y(t) ') ;%绘出y=tripuls{t,4,0.5）的波形
subplot(2,1,2) ;
plot(t(1:length(t)-1),y1);%绘出对y=tripuls（t,4,0.5）进行微分后的波形
grid on ;
title( 'dy(t)/dt');
