%用6阶多项式在[0,2.5]上对误差函数erf(x)进行最小二乘拟合
clear
x = 0:0.1:2.5;
y = erf(x);
p = polyfit(x,y,6)%调参改这个就好了
px= poly2str(p,'x')%可视化表达式
%f = polyval(p,x);
%T = table(x,y,f,y-f,'VariableNames',{'X','Y','Fit','FitError'})

x1 = 0:0.1:5;
y1 = erf(x1);
f1 = polyval(p,x1);
figure
plot(x,y,'ko')%[0,2.5]的真实点
hold on
plot(x1,y1,'b-')%原始数据
plot(x1,f1,'r--')%拟合曲线
axis([0  5  0  2])
legend('真实点','原始数据','拟合曲线')
hold off
