function[w, tw] =convCT(u, tu, v, tv) 
%���˲�����u��v��ʾ�������У�tu��tv�ֱ��ʾ���ǵĳ���ʱ��
%����ֵw��tw�ֱ��ʾ�������������ʱ��
T=tu(2) + tu(1);
W=T*conv(u,v);
tw=tu(1)+tv(1)+T*[0:length(u)+length(v)-2]
