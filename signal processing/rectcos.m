function y =rectcos(t,n,w)
y= (abs(t)<=1).*cos(n*w*t);             %定义矩形脉冲与余弦函数的乘积
