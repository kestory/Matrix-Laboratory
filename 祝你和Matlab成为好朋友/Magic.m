clear
magic(3)% It's the same every time
% magic(1000) exist
for n=8:11
	subplot(2,2,n-7)
	surf(magic(n))%绘制三维曲面图
    title(n)
    view(30,45)%视角
    axis off
	axis tight
end
