clc
close all;
fs=10000;
t=0:1/fs:1-1/fs;
a1 = 11;
a2 = 7;
a3 = 9;
a4 = 11;
f1 = 19;
f2 = 24;
f3 = 29;
f4 = 34;

y1= a1*sin(2*pi*f1*t)+ a2*cos(2*pi*f2*t);


L =4;
delta=(max(y1)-min(y1))/(L-1);
xq = min(y1)+(round((y1-min(y1))/delta)).*delta;
plot(t,y1,'r-.', 'linewidth',1.5);
hold on;
plot(t,xq,'k-.', 'linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('Manual quantization')
legend('Original signal','quantized signal')