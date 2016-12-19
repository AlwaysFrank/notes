function y=rectsin(t,n,w)
	y=(abs(t)<=1).*sin(n*w*t);              %定义矩形脉冲与正弦函数的乘积
