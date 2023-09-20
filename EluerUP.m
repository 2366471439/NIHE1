function upEuler=EluerUP(fun,x0,y0,h)
%改进的Euler公式，以下
%fun为一阶微分方程的函数
%x0，y0为初始条件
%n 为学号
%h为步长
%x为Xn构成的向量
%y为Yn构成的向量
%N为向后计算的步数

N=10;
x=zeros(1,N+1);y=zeros(1,N+1);
x(1)=x0;y(1)=y0;
for i=1:N
    x(i+1)=x(i)+h;
    y_next = y(i)+h*fun(x(i),y(i));
    y0_xielv = fun(  x(i),y(i)  );
    y1_xielv = fun(  x(i+1),y_next);
    y(i+1)= y(i) + h/2 * ( y0_xielv  +  y1_xielv ) ;
    disp('------------------------------------------------')
    fun(  x(i),y(i)  )   % 目前的
    fun(  x(i+1),y_next) %下一个
    x(i+1);
    y(i+1);
end

upEuler = {x,y};
end

