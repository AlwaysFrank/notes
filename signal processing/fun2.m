function y = fun2( t,w )
y =(abs(t)<=1).*(1-abs(t)).*exp(-j*w*t);
