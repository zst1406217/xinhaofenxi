clc,clear
for n=-15:1:15
    if n>=-4&n<=4
        xn=3*n;
    else xn=0;
    end
    stem(n,xn);
    hold on
end