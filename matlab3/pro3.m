clf,clc
N=4^4;
n=0:N-1;
xn=sin(0.2*pi*n)+randn(1,N);
disp('N=4^4【上面为dft时间，中间为fft时间，下面为dtft时间】')
tic
Xk=dft(xn,N);
toc
tic
Xf=fft(xn);
toc
tic
k=0:1000;
w=(pi/1000)*k;
X=xn*(exp(-1i*pi/1000)).^(n'*k);
toc

function Xk=dft(xn,N)
n=0:N-1;
k=n;
Wn=exp(-1j*2*pi/N);
nk=n'*k;
Wnnk=Wn.^nk;
Xk=xn*Wnnk;
end