clf,clc
N=50;
n=0:N-1;
xn=cos(0.82*pi*n)+2*sin(pi*n);
Xk=dft(xn,N);
magXk=abs(Xk);
angleXk=angle(Xk);
figure(1);
plot(xn);
xlabel('n');
ylabel('x(n)');
title('x(n)N=50');
figure(2);
k=0:length(magXk)-1;
plot(k,magXk);
xlabel('k');
ylabel('|X(k)|');
title('|X(k)|N=50');
figure(3);
plot(k,angleXk);
xlabel('k');
ylabel('angle(X(k))');
title('Angle(X(k))N=50');

function Xk=dft(xn,N)
n=0:N-1;
k=n;
Wn=exp(-1j*2*pi/N);
nk=n'*k;
Wnnk=Wn.^nk;
Xk=xn*Wnnk;
end