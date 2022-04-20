% problem 6
syms s;
x=ilaplace(s/(s^2+2*s+1))
fplot(x);
