%��6�׶���ʽ��[0,2.5]�϶�����erf(x)������С�������
clear
x = 0:0.1:2.5;
y = erf(x);
p = polyfit(x,y,6)%���θ�����ͺ���
px= poly2str(p,'x')%���ӻ����ʽ
%f = polyval(p,x);
%T = table(x,y,f,y-f,'VariableNames',{'X','Y','Fit','FitError'})

x1 = 0:0.1:5;
y1 = erf(x1);
f1 = polyval(p,x1);
figure
plot(x,y,'ko')%[0,2.5]����ʵ��
hold on
plot(x1,y1,'b-')%ԭʼ����
plot(x1,f1,'r--')%�������
axis([0  5  0  2])
legend('��ʵ��','ԭʼ����','�������')
hold off
