clear
%����sin(x^2+y^2)/(x^2+y^2)����ά����ͼ
x=-20:0.5:20;y=x';%�仯��20�о�ϲ

u=ones(size(y))*x;%ÿ�ж���x
v=y*ones(size(x));%ÿ�ж���y

r=sqrt(u.^2+v.^2)+eps
z=sin(r)./r;
mesh(z)%������
% surf(z)

xlabel('x')
ylabel('y')
zlabel('z')