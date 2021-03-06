clc
close all
fs = 50000;
t = 0:1/fs:1-1/fs;
nt = length(t);
A1 = 49;
C = 3;
x1 = A1*cos(2*pi*(C*100)*t);
A2= 3;
F = 3;
x2 = A2*cos(2*pi*(F*100)*t);
x3 = x1+x2;
signal = x3(1:200);
time = t(1:200);
xmin=min(x3);
xmax=max(x3);
line=linspace(xmin,xmax,6);
partition=[(line(1)+line(2))/2,(line(2)+line(3))/2,(line(3)+line(4))/2,(line(4)+line(5))/2,(line(5)+line(6))/2];
codebook = linspace(xmin,xmax,6);
[index,quantization] = quantiz(signal,partition,codebook)
figure
plot(time,signal,'x',time,quantization,'.');
xlabel('Time');
ylabel('Signal Partition');
title('Quantization');


