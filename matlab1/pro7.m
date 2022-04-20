% problem 7
clc,clear
%% Primitive function
step=0.001;
t=-10:step:10;
x=@(t)(sawtooth(t,0.5));
x_i=zeros(size(t));
subplot(3,1,1);
plot(t,x(t));
title('原函数')

%% Integral operation
for i=1:size(t,2)
    x_i(i)=integral(x,-10,t(i));
end
subplot(3,1,2);
plot(t,x_i)
title('积分运算')

%% Differential operation
x_dt=diff(x(t))./step;
subplot(3,1,3);
plot(t(2:end),x_dt)
title('微分运算')
