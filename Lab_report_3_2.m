clc
close all
fs = 40e3;
t = 0:1/fs:1/f;
A = 2; 
x = 6*cos(2*pi*150*t)+8*sin(2*pi*160*t);
L =10;
delta=(max(x)-min(x))/(L-1);
xq = min(x)+(round((x-min(x))/delta)).*delta;
plot(t,x,'r-.', 'linewidth',1.5);
hold on;
plot(t,xq,'k-.', 'linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('manual quantization method 2')
legend('Original signal','quantized signal')