%% RK方法做计算
%% 刘金远书 上例子 5.2.3

a=2;
b=3;
ya=4;
n=11;
x=2:1/11:3;
f=@(x,y)[x*sqrt(y)];
%%直接采用匿名函数的方式来做
y=rk4(f,a,b,ya,n);

%% function 里面所用到的x,y变量只是短暂的存在于函数工作的临时空间中，
%% 所以得在脚本中，重新定义一下所用到的变量
%%只能调用处在计算物理文件夹中的函数，处在测试文件中的非计算物理文件夹中
%%的文件都没法调用

plot(x,y,'r-');
hold on;
xe=linspace(a,b,100);
plot(xe,(1+0.25*xe.*xe).^2,'b.')

%%%套路型的结尾，可以经常进行使用

set(gca,'fontsize',13);
xlabel('x');
ylabel('y');
legend('数值解','精确解','location','northwest')
title('例5.2.3作图')




