%P=polyfit(X,Y,n) 用n阶多项式拟合X,Y向量给定的数据
%PA=polyval(p,XI) 求XI点上的拟合函数的近似值
clear
x=[0.5 1.0 1.5 2.0 2.5 3.0]
y=[1.75 2.45 3.81 4.80 7.00 8.60]
plot(x,y,'*')%散点图
hold on
a1=polyfit(x,y,1)
a2=polyfit(x,y,2)
a3=polyfit(x,y,3)
y1=a1(1)*x+a1(2);
y2=a2(1)*x.^2+a2(2)*x+a2(3);
y3=a3(1)*x.^3+a3(2)*x.^2+a3(3)*x+a3(4);
plot(x,y1,'b:',x,y2,'k',x,y3,'g')%一次、二次和三次多项式的拟合曲线：蓝色点线；黑色；绿色
p1=polyval(a1,x);
p2=polyval(a2,x);
p3=polyval(a3,x);

s1=norm(y-p1)
s2=norm(y-p2)%使用 'fro' 可以计算一个稀疏矩阵的 Frobenius 范数
s3=norm(y-p3)%可见三次拟合方差最小

% 试着调换点的顺序，拟合出来的曲线函数不变（不排除Matlab先排序的可能）
% 重新令x=0.5:0.1:3画曲线就很好看，不重新设置会有回边
