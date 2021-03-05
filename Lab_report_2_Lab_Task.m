clc
close all
fs=50000;
t = -1:1/fs:1;
nt = length(t);
A1 = 49;
C = 3;
x1 = A1*cos(2*pi*(C*100)*t);
A2= 3;
F = 3;
x2 = A2*cos(2*pi*(F*100)*t);
x3 = x1+x2;
plot(t,x3,'linewidth',2);
xlabel('Time')
ylabel('Amplitude')
title('Time-Domain representation')
f_xt = abs(fftshift(fft(x3)))/(nt/2);
freq = linspace (-fs/2,+fs/2,nt);
close all
figure
plot(freq,f_xt,'linewidth',2);
xlim([-400,400]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')
close all
bandwidth = obw(x3,fs)
