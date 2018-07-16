function fern
%{
Fractal Fern 分行蕨
平面上一个点经过线性变换
x -> Ax+b
A=[ 0.85 0.04
    -0.04 0.85]
b=[ 0
    1.6]
将向量x缩短并略作旋转
之后在其第二个分量上加一个固定位移

我们这里以一定概率采用四个不同的变换
%}
shg %show graph window
clf reset %画图的参数初始化为缺省值
set(gcf,'color','white','menubar','none', ...
   'numbertitle','off','name','Fractal Fern')
%窗口背景设置为白色，标题写为 Fractal Fern
x = [.5; .5];
darkgreen = [0 2/3 0];%新颜色 红蓝分量为0，绿色分量为其最大值的2/3
plot(x(1),x(2),'.','markersize',4,'color',darkgreen)
%改变点的大小，颜色变为darkgreen
axis([-3 3 0 10])%绘图范围
axis off%不画坐标轴
stop = uicontrol('style','toggle','string','stop!', ...
   'background','white');
%生成一个图标，之后点击它会终止并输出
drawnow
hold on

p  = [ .85  .92  .99  1.00]; % 累计概率
A1 = [ .85  .04; -.04  .85];  b1 = [0; 1.6];
A2 = [ .20 -.26;  .23  .22];  b2 = [0; 1.6];
A3 = [-.15  .28;  .26  .24];  b3 = [0; .44];
A4 = [  0    0 ;   0   .16];

cnt = 1;
tic
while ~get(stop,'value')
   r = rand;
   if r < p(1)
      x = A1*x + b1;
   elseif r < p(2)
      x = A2*x + b2;
   elseif r < p(3)
      x = A3*x + b3;
   else
      x = A4*x;
   end
   plot(x(1),x(2),'.','markersize',4,'color',darkgreen)
   drawnow
   cnt = cnt + 1;
end
t = toc;
s = sprintf('%8.0f points in %6.3f seconds',cnt,t);
text(-1.5,-0.5,s,'fontweight','bold');
set(stop,'style','pushbutton','string','close','callback','close(gcf)')
hold off
