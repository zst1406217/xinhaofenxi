clc,clear
subplot(3,1,1)
for x=-8:1:8
    t1=x;
    y=xt(t1);
    stem(x,y)
    xlabel('n')
    ylabel('x(n)')
    hold on
end
hold off

subplot(3,1,2)
for x=-8:1:8
    t1=x;
    t2=t1-3;
    y=xt(t2);
    stem(x,y);
    xlabel('n');
    ylabel('x(n-3)');
    hold on
end
hold off

subplot(3,1,3)
for x=-8:1:8
    t1=x;
    t3=-t1;
    y=xt(t3);
    stem(x,y);
    xlabel('n');
    ylabel('x(n-3)');
    hold on
end
hold off

function y=xt(n)
if n==0
    y=2;
elseif n==2
    y=1;
elseif n==3
    y=-1;
elseif n==4
    y=3;
else y=0;
end
end