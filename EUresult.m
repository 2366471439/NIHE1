clc
clear

n = 14;
h = 0.05;
x0 = 0;
y0 = 1;
fun=@(x,y)(x.^n+1).*y.^2+x.*y.^3;
result =  EluerUP(fun,x0,y0,h);
 
result{1}
result{2}
plot(result{1,1},result{1,2})
title('改进欧拉法')