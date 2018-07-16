clear
%绘制sin(x^2+y^2)/(x^2+y^2)的三维立体图
x=-20:0.5:20;y=x';%变化下20有惊喜

u=ones(size(y))*x;%每行都是x
v=y*ones(size(x));%每列都是y

r=sqrt(u.^2+v.^2)+eps
z=sin(r)./r;
mesh(z)%纯网格
% surf(z)

xlabel('x')
ylabel('y')
zlabel('z')