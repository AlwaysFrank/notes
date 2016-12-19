% x[k]=sin（π/8 k）的累加值，为了绘出一个完整的周期设k为0～16
clear all ;close all;clc ;
k=0:16 ;
xk=cos(pi * k/8) ;% x[k]表达式
subplot(2,1,1); 
stem(k, xk,'filled');
grid on ;
title('x[k]');
xk2=cumsum(xk);%对x[k]进行累加计
subplot(2,1,2);
stem(k,xk2,'filled');grid on;
title('accumalation of x[k]');
