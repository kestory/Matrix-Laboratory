ones(m,n) 全1
zeros(m,n) 全0
eye(n) 单位矩阵
zeros(size(fort))一个与fort同阶的零矩阵

F=A'
A为实数矩阵，F是A的转置
A为复数矩阵，F是A的共轭转置

Ax = b
x=A\b

随机矩阵
rand(m,n) (0,1)上均匀分布
randn(m,n) 服从正态分布

== 相等
~= 不等
log(x) lnx
log10(x) lgx
sqrt(x) x的平方根
sqrtm(A) 矩阵A的平方根，即a^(0.5)，sqrtm(a)*sqrtm(a) == a 而 sqrt(a)*sqrt(a)~=a

eps 机器的精度
pi 圆周率
inf n/0
NaN 0/0
i,j 虚数单位-1^(0.5)


直接用向量或矩阵能极大提高运算速度
clear
tic
for i=1:5000000
	b(i)=sqrt(i);
end
t=toc
disp(['Time for loop method:',num2str(t)]);

tic
a=1:5000000;
b=sqrt(a);
t=toc
disp(['Time for vector method:',num2str(t)]);
习惯于使用help
