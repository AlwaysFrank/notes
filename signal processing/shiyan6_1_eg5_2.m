% ������ɢָ������x[k]=Aak��x[1/2k]��������ʾ���¶�����ɢָ������x[k]=Aak��x[1/2k]��������ʾ����
clear all; close all ; clc; 
A=1;a=-0.5;k=0:10;
xk=A* a.^k; %x[k]���ʽ
subplot(2,1,1) ;
stem(k, xk);
grid on ;
title('x[k] ') 
xk2=A*a.^(0.5*k);%��0.5k]���ʽ
subplot(2,1,2) ;
stem(k,xk2) ;
grid on ;
title( 'x[0.5k] ') ;
