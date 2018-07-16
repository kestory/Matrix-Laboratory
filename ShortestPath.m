s = [1 1 2 2 3 4];  % 起始节点向量
e = [2 3 4 5 5 5];  % 终止节点向量
w = [1 4 2 3 2 2];  % 权向量
g = sparse(s,e,w);  % 构建稀疏矩阵
g(5,5)=0;   % 使稀疏矩阵其余元素为0

p=biograph(g,[],'ShowWeights','on');%建立有向图对象P
h=view(p);%显示各个路径权值

% 求节点1到节点5的最短路径
[Dist,Path]=graphshortestpath(g,1,5,'Method','Dijkstra')

% 将最短路径的结点以红色显示
set(h.Nodes(Path),'Color',[1 0.4 0.4]);
% 将最短路径的弧以红色显示
edges=getedgesbynodeid(h,get(h.Nodes(Path),'ID'));
set(edges,'LineColor',[1 0 0]);
set(edges,'LineWidth',2.0);
