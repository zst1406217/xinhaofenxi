clc,clear
N=20;
Ts=1/1000;
W0=0.1*pi;
n=0:N-1;
A=10;B=20;
x=A.*cos(200*pi.*n*Ts)+B.*cos(500*pi.*n*Ts);
X=1/N*x*exp(-1i*W0*(n'*n));% 将k=0到19对应的X(KΩ0)存储在长为20的向量中
X(3)