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
y2= a3*sin((2*pi*f3*t) + pi/2) + a4*cos((2*pi*f4*t) - pi/3);

nt = length(t);
f_xt = abs(fftshift(fft(y1)))/(nt/2);
freq = linspace (-fs/2,+fs/2,nt);
plot(freq,f_xt,'linewidth',1.5);
hold on
f1_xt = abs(fftshift(fft(y2)))/(nt/2);
freq1 = linspace (-fs/2,+fs/2,nt);
plot(freq1,f1_xt,'linewidth',1.5);
xlim([-60,60]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')
legend('y1 signal','y2 signal')