% x[k]=sin����/8 k�����ۼ�ֵ��Ϊ�˻��һ��������������kΪ0��16
clear all ;close all;clc ;
k=0:16 ;
xk=cos(pi * k/8) ;% x[k]���ʽ
subplot(2,1,1); 
stem(k, xk,'filled');
grid on ;
title('x[k]');
xk2=cumsum(xk);%��x[k]�����ۼӼ�
subplot(2,1,2);
stem(k,xk2,'filled');grid on;
title('accumalation of x[k]');
