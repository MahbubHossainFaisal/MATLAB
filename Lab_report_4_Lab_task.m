close all;
clc;
fs = 8000; 
f = 400; 
t = 0:1/fs:1-1/fs;
powfund = (1.5^2/2)+(0.9^2/2)+(1.1^2/2)
s = 0.1;
varnoise = s^2;
signal = 1.5*sin(2*pi*2*t)+0.9*cos(2*pi*10*t)+1.1*sin(2*pi*20*t)+ 0.13*randn(size(t));
noise = s*randn(size(signal));
noisySignal = signal + noise;
SNR = snr(noisySignal)
defSNR = 10*log10(powfund/varnoise) ;