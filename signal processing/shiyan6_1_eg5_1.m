% ������x��t��=tripuls��t,4,0.5����ʾ�����ǲ�����x��t����x��2t����x��1-t���ĳ�����Ա�ʾ����
clear all; close all ; clc; 
t=-3:0.001:3 ;
xt=tripuls(t, 4,0.5); %���� x(t) 
subplot(3,1,1) ;
plot(t, xt) ;
grid on;%��������
title(' x(t)') ;
xt1=tripuls(2* t, 4,0.5); %���� x(2t) 
subplot(3,1,2); 
plot(t, xt1) ;
grid on ;
title(' x(2t) ') ;
xt2=tripuls(1-t, 4,0.5); %���� x(1-t) 
subplot(3,1,3) ;
plot(t, xt2) ;
grid on ;
title(' x(1-t) ') ;
