function [xc,yc,R] = circfit(x,y)
%MATLAB拟合圆函数
% x=x*1000;
% y=y*1000;
n=length(x); xx=x.*x; yy=y.*y; xy=x.*y;
A=[sum(x) sum(y) n;sum(xy) sum(yy)...
    sum(y);sum(xx) sum(xy) sum(x)];
B=[-sum(xx+yy) ; -sum(xx.*y+yy.*y) ; -sum(xx.*x+xy.*y)];
% a=A\B;
a=pinv(A)*B;
xc = -.5*a(1);
yc = -.5*a(2);
R = sqrt((a(1)^2+a(2)^2)/4-a(3));
% theta=0:0.1:2*pi;
% Circle1=xc+R*cos(theta);
% Circle2=yc+R*sin(theta);
%  plot(Circle1,Circle2,'g-','linewidth',1);hold on;grid on;grid minor;
% title('截面拟合圆');
% axis equal;
% % axis ([-0.4,0.4 -0.4,0.4]);
% xlabel('X(mm)');
% ylabel('Y(mm)');
end
