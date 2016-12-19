% 三角波函数
% 用斜坡函数ramp（）来实现。程序如下

function y=tri(t) 
y = ramp(t+1)-2*ramp(t) + ramp(t-1);
