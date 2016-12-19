clear all;close all;clc;
w=linspace(-6*pi,6*pi,512);
N=length(w);F=zeros(1,N);
for k=1:N
    F(k)=quad('fun2',-1,1,[],[],w(k));
end
subplot(2,1,1);plot(w,real(F));
xlabel('w');ylabel('F(jw)的实部 ');grid on;
subplot(2,1,2);plot(w,imag(F));
xlabel('w');
ylabel('F(jw)的虚部');grid on;
