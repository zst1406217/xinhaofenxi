% problem 2
clc,clear
x=@(t)(0.25.*(t+4).*(t<0&t>-4)+1.*(t>=0&t<2)+0);
t=-10:0.01:10;
%% 原函数
x_1=x(t);
subplot(3,1,1)
plot(t,x_1)
title('x(t)')

%% 平移
x_2=x(-2*t);
subplot(3,1,2)
plot(t,x_2)
title('x(-2t)')

%% 翻转压缩
x_3=x(-2*t+4);
subplot(3,1,3)
plot(t,x_3)
title('x(-2t+4)')