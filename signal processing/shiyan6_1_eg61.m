% ��y=tripuls��t,4,0.5����΢��
clear all ;close all;clc ;
h=0.001 ;
t=-3:h:3 ;
y=tripuls(t, 4,0.5) %����y�Ĳ���
y1=diff(y)/h;%��y����΢��
subplot(2,1,1); 
plot(t, y) ;
grid on ;
title( 'y(t) ') ;%���y=tripuls{t,4,0.5���Ĳ���
subplot(2,1,2) ;
plot(t(1:length(t)-1),y1);%�����y=tripuls��t,4,0.5������΢�ֺ�Ĳ���
grid on ;
title( 'dy(t)/dt');
