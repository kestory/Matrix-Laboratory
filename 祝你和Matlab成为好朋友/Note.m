ones(m,n) ȫ1
zeros(m,n) ȫ0
eye(n) ��λ����
zeros(size(fort))һ����fortͬ�׵������

F=A'
AΪʵ������F��A��ת��
AΪ��������F��A�Ĺ���ת��

Ax = b
x=A\b

�������
rand(m,n) (0,1)�Ͼ��ȷֲ�
randn(m,n) ������̬�ֲ�

== ���
~= ����
log(x) lnx
log10(x) lgx
sqrt(x) x��ƽ����
sqrtm(A) ����A��ƽ��������a^(0.5)��sqrtm(a)*sqrtm(a) == a �� sqrt(a)*sqrt(a)~=a

eps �����ľ���
pi Բ����
inf n/0
NaN 0/0
i,j ������λ-1^(0.5)


ֱ��������������ܼ�����������ٶ�
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
ϰ����ʹ��help
