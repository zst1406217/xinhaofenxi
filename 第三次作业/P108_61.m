clc,clear
syms t w;
%% (1)
fourier(exp(-1i*t)*dirac(t-2))

%% (2)
fourier(1-2*(heaviside(t+sqrt(2))-heaviside(t-sqrt(2))))

%% (3)
fourier(exp(-5*t)*heaviside(t+2))

%% (4)
fourier(heaviside(t-1))