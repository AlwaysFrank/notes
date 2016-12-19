% 对于离散指数序列x[k]=Aak及x[1/2k]，其程序表示如下对于离散指数序列x[k]=Aak及x[1/2k]，其程序表示如下
clear all; close all ; clc; 
A=1;a=-0.5;k=0:10;
xk=A* a.^k; %x[k]表达式
subplot(2,1,1) ;
stem(k, xk);
grid on ;
title('x[k] ') 
xk2=A*a.^(0.5*k);%对0.5k]表达式
subplot(2,1,2) ;
stem(k,xk2) ;
grid on ;
title( 'x[0.5k] ') ;
