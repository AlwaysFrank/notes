clear all;close all;clc;
syms t w;
x=ifourier(4/(4+w^2),t);
subplot(2,1,1);ezplot(x);grid on;
w=-6:0.1:6;
X=4./(4+w.^2);
% X=subs(X,'w',w);
subplot(2,1,2);plot(w,X);
xlabel('w');title('X');grid on;
