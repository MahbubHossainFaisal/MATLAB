fs=5000;
t = -01:1/fs:1-1/fs;
nt=length(t);
A1= 10;
A2= 13;
A3= 12;
f1= 13;
f2= 12;
f3= 10;

s1=A1*sin((2*pi*f1*t)+pi/2);
s2=A2*cos((2*pi*f2*t)-pi/3);
s3=A3*sin((2*pi*f3*t)+pi/4);

f1_xt = abs(fftshift(fft(s1)))/(nt/2);
f2_xt = abs(fftshift(fft(s2)))/(nt/2);
f3_xt = abs(fftshift(fft(s3)))/(nt/2);
freq = linspace (-fs/2,+fs/2,nt);
subplot(3,1,1)
plot(freq,f1_xt);
xlim([-15,15]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')

subplot(3,1,2)
plot(freq,f2_xt);
xlim([-15,15]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')

subplot(3,1,3)
plot(freq,f3_xt);
xlim([-15,15]);
xlabel('Frequency')
ylabel('Amplitude')
title('Frequency-Domain representation')

