clc,clear;
syms n
Y=cos(n)*heaviside(n);
ztrans(Y)

syms z
X=1/((1+z)*(z+2));
iztrans(X)