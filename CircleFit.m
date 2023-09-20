function [x0, y0, R] = CircleFit(x, y)
% 圆的一般方程形式 x^2 + y^2 + a*x + b*y + c = 0
% 求解 a b c 即可
n = length(x);
A = [x, y, ones(n, 1)];
y = -(x.^2 + y.^2);
x = A\y;
a = x(1);
b = x(2); 
c = x(3);
% 圆心、半径
x0 = -a/2;
y0 = -b/2;
R = sqrt((a^2 + b^2) / 4 - c);
end