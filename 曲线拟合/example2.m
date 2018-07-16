%对离散数据的曲线拟合
clear
n=1:1:11
y=[log(1) log(2) log(3) log(4) log(6) log(8) log(10) log(13) log(18) log(24) log(32)]
%lnx->log(x); lgx->log10(x)
p=polyfit(n,y,1)
px=poly2str(p,'n')
a=[11 66;66 506];
b=[21.45095078; 164.2174248];
a\b
ap=exp(0.0131);
bp=0.3228;
