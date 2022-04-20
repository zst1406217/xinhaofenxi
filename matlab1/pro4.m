% problem 4
syms w;
xt=ifourier(exp(-w^2/4))
fplot(xt);