function [y, n] =convDT(x1, n1, x2, n2) 
%���� function [y, n] =conv_1(x1, n1, x2, n2) 
% y=x1* x2 
%n1,n2�ֱ���x1��x2������
n= [(min(n1) + min(n2)) :1: ((min(n1) + min(n2)) + 1ength(n2) + 1ength(n1)-2)] ;
y=conv(x1, x2) ;
subplot(1,1,1);
stem(n, y) ;
end
