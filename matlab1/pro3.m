% problem 3
clc,clear
%% Fourier transform
syms t w;
X=fourier(exp(-2*t)*heaviside(t))
fplot(abs(X));
title('频谱图')
xlabel('w')
ylabel('|X(w)|')