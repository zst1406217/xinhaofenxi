clc,clear
%% (1)
n=0:10;
x=0.9*exp(1j*pi/3.*n);
w=(-200:1:200)*pi/100;
X=x*(exp(-1i)).^(n'*w);
magX=abs(X);angX=angle(X);
subplot(3,1,1);stem(n,x);title('原始序列');grid;
ylabel('x(n)');xlabel('n');
subplot(3,1,2);plot(w/pi,magX);title('幅度响应');grid;
ylabel('幅度');xlabel('以pi为单位的频率');
subplot(3,1,3);plot(w/pi,angX);title('相位响应');grid;
ylabel('相位/\pi');xlabel('以\pi为单位的频率');

%% (2)
n=-10:10;
x=(2).^n;
w=(-200:1:200)*pi/100;
X=x*(exp(-1i)).^(n'*w);
magX=abs(X);angX=angle(X);
subplot(3,1,1);stem(n,x);title('原始序列');grid;
ylabel('x(n)');xlabel('n');
subplot(3,1,2);plot(w/pi,magX);title('幅度响应');grid;
ylabel('幅度');xlabel('以pi为单位的频率');
subplot(3,1,3);plot(w/pi,angX);title('相位响应');grid;
ylabel('相位/\pi');xlabel('以\pi为单位的频率');