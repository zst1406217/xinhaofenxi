% problem 1(断点调试)
clc,clear

%% Unit impulse signal
t=-5:0.01:5;
k=1e-10;
y=1/k.*(heaviside(t+k/2)-heaviside(t-k/2));
plot(t,y);
grid on
ylim([-2 2]);

%% Unit step function
y=@(x)(heaviside(x));
fplot(y)

%% sinusoidal signal
y=@(x)(sin(x));
fplot(y)

%% Exponential signal
y=@(x)(exp(-2*x));
t=-2:0.01:2;
yt=y(t);
plot(t,yt)

%% Periodic triangular wave
y=@(x)(sawtooth(2*x,0.5));
fplot(y)

%% Periodic sawtooth wave
y=@(x)(sawtooth(2*x));
fplot(y)

%% Periodic square wave
y=@(x)(square(2*x));
fplot(y)

%% Sampling signal Sa(t)
t=-4*pi:0.1:4*pi;
y=sin(t)./t;
plot(t,y);
grid on