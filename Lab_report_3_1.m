clc
close all
bit = 2;
fs = 30000;
t = 0:1/fs:1/f; 
y = 6*cos(2*pi*150*t)+8*sin(2*pi*160*t);
Nsamples=length(y); 
quantised_out=zeros(1,Nsamples);
del=2*14/(2^bit);
Llow=-14+del/2;
Lhigh=14-del/2;
for i=Llow:del:Lhigh
 for j=1:Nsamples
 if(((i-del/2)<=y(j))&&(y(j)<=(i+del/2)))
 quantised_out(j)=i; 
 end 
 end
end
plot(t,y,'r-.', 'linewidth',1.5);
hold on;
plot(t,quantised_out,'k-.', 'linewidth',1.5);
xlabel('time')
ylabel('amplitude')
title('Manual quantization method 1')
legend('Original signal','quantized signal')