clear;
n=0:1:32;
xn1=exp((-0.1+0.3j)*n);

Rexn1=real(xn1);
Imxn1=imag(xn1);
magxn1=abs(xn1);
anglexn1=angle(xn1);

plot(n,Rexn1);
title('实部');

plot(n,Imxn1);
title('虚部');

plot(n,magxn1);
title('幅值');

plot(n,anglexn1);
title('相角');