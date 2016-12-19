% 对于如x（t）=tripuls（t,4,0.5）所示的三角波，则x（t）、x（2t）和x（1-t）的程序可以表示如下
clear all; close all ; clc; 
t=-3:0.001:3 ;
xt=tripuls(t, 4,0.5); %定义 x(t) 
subplot(3,1,1) ;
plot(t, xt) ;
grid on;%开启网格
title(' x(t)') ;
xt1=tripuls(2* t, 4,0.5); %定义 x(2t) 
subplot(3,1,2); 
plot(t, xt1) ;
grid on ;
title(' x(2t) ') ;
xt2=tripuls(1-t, 4,0.5); %定义 x(1-t) 
subplot(3,1,3) ;
plot(t, xt2) ;
grid on ;
title(' x(1-t) ') ;
