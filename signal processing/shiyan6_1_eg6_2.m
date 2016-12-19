%	求y=tripuls（t,4,0.5）在（-3,3）之间的积分
clear all;  clc;
h=0.001  ;
t=-3: h: 3 ;
y=tripuls(t, 4,0.5) ;
for x=1 :length(t) 
y2(x)=quad('fun1',-3,t(x));%计算fun1在积分限（-3,t（x））上的积分
end
subplot(2,1,1) ;
plot(t, y) ;
grid on ;
title('x(t) ') ;%绘出y=tripuls（t,4,0.5）的波形
subplot(2,1,2) ;
plot(t,y2);%绘出对y=tripuls（t,4,0.5）进行积分后的波形
grid on ;
title(' integral of x(t) ');
