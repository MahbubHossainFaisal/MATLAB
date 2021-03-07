clc
close all;
fs=10000;
t=0:1/fs:0.3;
a1 = 11;
a2 = 7;
a3 = 9;
a4 = 11;
f1 = 19;
f2 = 24;
f3 = 29;
f4 = 34;

y1= a1*sin(2*pi*f1*t)+ a2*cos(2*pi*f2*t);
y2= a3*sin((2*pi*f3*t) + pi/2) + a4*cos((2*pi*f4*t) - pi/3);


nt = length(t);
plot(t,y1,'linewidth',1.5);
hold on
plot(t,y2,'linewidth',1.5);
xlabel('Time')
ylabel('Amplitude')
title('Time-Domain representation')
legend('y1 signal','y2 signal')