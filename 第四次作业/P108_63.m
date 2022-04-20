clc,clear
syms t;
%% (1)
X=fourier(sin(3*pi*(t-2))/(pi*(t-2)));
subplot(2,1,1);
fplot(abs(X))
title('幅度谱')
subplot(2,1,2);
fplot(angle(X))
title('相位谱')

%% (2)
syms tao w;
g1=fourier(sin(pi*t)/(pi*t),t,tao);
g2=fourier(sin(pi*t)/(pi*t),t,w-tao);
% 卷积运算
X=1/(2*pi)*int(g1*g2,tao,-inf,inf);
subplot(2,1,1);
fplot(abs(X))
title('幅度谱')
subplot(2,1,2);
fplot(angle(X))
title('相位谱')