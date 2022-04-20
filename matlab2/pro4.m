clc,clear
x=[1,2,3,4];
y=[1,1,1,1,1];
z=conv(x,y);
N=length(z);
stem(0:N-1,z);