%	��y=tripuls��t,4,0.5���ڣ�-3,3��֮��Ļ���
clear all;  clc;
h=0.001  ;
t=-3: h: 3 ;
y=tripuls(t, 4,0.5) ;
for x=1 :length(t) 
y2(x)=quad('fun1',-3,t(x));%����fun1�ڻ����ޣ�-3,t��x�����ϵĻ���
end
subplot(2,1,1) ;
plot(t, y) ;
grid on ;
title('x(t) ') ;%���y=tripuls��t,4,0.5���Ĳ���
subplot(2,1,2) ;
plot(t,y2);%�����y=tripuls��t,4,0.5�����л��ֺ�Ĳ���
grid on ;
title(' integral of x(t) ');
