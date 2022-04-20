clc,clear
x=-5:0.1:5;
y1=2.*(heaviside(x+sqrt(2))-heaviside(x-sqrt(2)));
y2=1-2.*(heaviside(x+sqrt(2))-heaviside(x-sqrt(2)));
plot(x,y2);