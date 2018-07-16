s = [1 1 2 2 3 4];  % ��ʼ�ڵ�����
e = [2 3 4 5 5 5];  % ��ֹ�ڵ�����
w = [1 4 2 3 2 2];  % Ȩ����
g = sparse(s,e,w);  % ����ϡ�����
g(5,5)=0;   % ʹϡ���������Ԫ��Ϊ0

p=biograph(g,[],'ShowWeights','on');%��������ͼ����P
h=view(p);%��ʾ����·��Ȩֵ

% ��ڵ�1���ڵ�5�����·��
[Dist,Path]=graphshortestpath(g,1,5,'Method','Dijkstra')

% �����·���Ľ���Ժ�ɫ��ʾ
set(h.Nodes(Path),'Color',[1 0.4 0.4]);
% �����·���Ļ��Ժ�ɫ��ʾ
edges=getedgesbynodeid(h,get(h.Nodes(Path),'ID'));
set(edges,'LineColor',[1 0 0]);
set(edges,'LineWidth',2.0);
