% problem 5
syms t;
L=laplace(exp(-3*t)*cos(t)*heaviside(t))
fplot(L);
