clear
magic(3)% It's the same every time
% magic(1000) exist
for n=8:11
	subplot(2,2,n-7)
	surf(magic(n))%������ά����ͼ
    title(n)
    view(30,45)%�ӽ�
    axis off
	axis tight
end
