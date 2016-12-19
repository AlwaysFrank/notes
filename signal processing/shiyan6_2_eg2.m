clear all; close all; clc
k=0:10 ;
a= [1 3 3] ;
b=[1] ;
h=impz(b, a, k) ;
stem(k, h) ;
title('离散时间系统冲激响应');grid on;
