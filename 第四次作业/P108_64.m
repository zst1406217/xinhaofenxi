clc,clear
syms w w0 t;
%% (1)
xt=ifourier(heaviside(w+w0)-heaviside(w-w0),w,t);
xt=simplify(xt)

%% (2)
xt=ifourier(dirac(w+w0)-dirac(w-w0),w,t);
xt=simplify(xt)

%% (3)
xt=ifourier(5*cos(2*w),w,t);
xt=simplify(xt)

%% (4)
xt=ifourier(exp(-j*w)*(heaviside(w)-heaviside(w-1)),w,t);
xt=simplify(xt)