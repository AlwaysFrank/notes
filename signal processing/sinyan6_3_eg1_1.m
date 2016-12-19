clear all;close all;clc;
T=4;tao=2;w=2*pi/T;
a0=quadl(@singrect,-2,2)/T;        %计算a0
N=10;an=zeros(1,N);bn=zeros(1,N);
for k=1:N
  an(k)=quadl(@rectcos,-2,2,[],[],k,w)*2/T;   %计算an。quadl()中的[]表示
%默认精度进行数值积分，k、w为rectcos函数
%中的后两个参数；
  bn=quadl(@rectsin,-2,2,[],[],k,w)*2/T;      %计算bn;
end;
n=1:1:N;
figure(1);
subplot(1,2,1);plot(n,an,'-o');title('an');grid on;
subplot(1,2,2);plot(n,bn,'-o');title('bn');grid on;
t=-6:0.01:6;
x=pulstran(t,-8:4:8,'rectpuls',2);          %生成周期矩形脉冲信号
figure(2);subplot(6,2,1);
plot(t,x);
axis([-8,8,-1,2]);grid on
A0=a0;                                  %有限项级数逼近
AN=sqrt(an.^2+bn.^2);
fiN=-atan(bn./an);                         %直流项
subplot(6,2,2);plot(t,A0/2);grid on;
wave=a0/2;
for k=1:10
   wave=wave+an(k)*cos(k*w*t+fiN(k));
subplot(6,2,k+2);plot(t,wave);grid on;
end	
