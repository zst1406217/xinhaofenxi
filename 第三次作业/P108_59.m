clc,clear
syms n t;
assume(n,'integer');
assumeAlso(n>=1);

%% a)
T=4;
int(2/T*1,t,-1,1) % a0
int(2/T*cos(2*pi*n*t/T),t,-1,1) % an
int(2/T*sin(2*pi*n*t/T),t,-1,1) % bn

%% b)
T=2;
m=2*pi/T;
int(sin(m*t),t,0,1) % a0
int(2/T*sin(m*t)*cos(2*pi*n*t/T),t,0,1) % an
int(2/T*sin(m*t)*sin(2*pi*n*t/T),t,0,1) % bn