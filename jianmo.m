function jianmo(name)
[n,f] = objread(name);
%记得需要转置
n = n';
f = f';
objPlot(n,f,'name');
hold on
x = n(:,1);
y = n(:,2);
z = n(:,3);
zmax = max(z);
h = zmax-0.2; % 高度
r = 0.6;  %半径
pos = [0,0]; % 圆心位置
t=0:0.001:(2*pi);  % 圆滑性设置
t=[t,0];
plot3(pos(1)+r*sin(t),pos(2)+r*cos(t), h*ones(size(t)));
hold on
[id_ymax,id_xmax]=find(z==zmax);
xmax=x(id_xmax);
ymax=y(id_ymax);    %找出Z的最大值对应的横纵坐标xmax、ymax
plot3(xmax,ymax,zmax,'k.','markersize',5)   %标记一个黑色的圆点
text(xmax,ymax,zmax,['  x=',num2str(xmax),char(10),'  y=',num2str(ymax),char(10),'  z=',num2str(zmax)]);   %#ok<CHARTEN> %标出坐标
end



