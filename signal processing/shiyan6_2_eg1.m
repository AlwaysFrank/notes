clear all ;close all;clc
a= [1 4 4] ;
b= [1 3] ;
sys=tf(b, a) ;
td=0.01 ;
t=0 :td: 10 ;
x=exp(-t) ;
y=lsim(sys, x, t) ;
plot(t, y);hold on;
xlabel('t(sec)') ; 
ylabel('y(t)') ; 
grid on ;
