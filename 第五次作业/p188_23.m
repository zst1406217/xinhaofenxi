clc,clear
% 问了老师，老师说把未知数带入一个值进去算，并且x取一个n的上限值，否则没法表示无限长向量。
alpha=0.5;
beta=0.6;
N=5;
n0=4;
N0=20;
for i=1:N
    h(i)=alpha^(i-1);
end
for i=n0:N0
    x(i-n0+1)=beta^(i-n0);
end
y=conv(h,x);
n=0:(N+N0-n0-1);
stem(n,y);
grid on;