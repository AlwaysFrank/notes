clear all;close all;clc;
b=[1,1,3];a=[2,2];
[h,w]=freqs(b,a,100);
Magnitude=abs(h);                     %�������
Phase=angle(h)*180/pi;               %������λ�������㵽�Ƕ�
subplot(2,1,1);plot(w,Magnitude);
xlabel('w');ylabel('Magnitude');grid on;
subplot(2,1,2);plot(w,Phase);
xlabel('w');ylabel('Phase');grid on;