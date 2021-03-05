
fs=50000;
t = -1:1/fs:1-1/fs;
nt = length(t);
cx = 1.1*sin(2*pi*2*t)+1.3*cos(2*pi*10*t)+1.5*sin(2*pi*20*t);
plot(t,cx,'linewidth',2);
xlabel('Time')
ylabel('Amplitude')
title('Time-Domain representation')
f_xt = abs(fftshift(fft(cx)))/(nt/2);
freq = linspace (-fs/2,+fs/2,nt);
close all
figure
plot(freq,f_xt,'linewidth',2);
xlim([-30,30]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')