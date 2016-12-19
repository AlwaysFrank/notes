clear all;close all;clc;
b=[1,1,3];a=[2,2];
[h,w]=freqs(b,a,100);
Magnitude=abs(h);                     %计算幅度
Phase=angle(h)*180/pi;               %计算相位，并换算到角度
subplot(2,1,1);plot(w,Magnitude);
xlabel('w');ylabel('Magnitude');grid on;
subplot(2,1,2);plot(w,Phase);
xlabel('w');ylabel('Phase');grid on;
