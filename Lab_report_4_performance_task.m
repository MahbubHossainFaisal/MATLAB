fs =50000;
t=0:1/fs:5;
A1= 10;
A2 = 12;
S = 0.37;
x=A1*sin(2*pi*1100*t) + A2*cos(2*pi*1100*t) + 0.37*randn(size(t));
nt = S*randn(size(x));
noisy_signal = x+nt;
 
ps= (A1^2/2)+(A2^2/2);
pn = S^2/2;
 
snr = ps/pn;
snr_db = 10*log10(snr);
bandwidth= obw(x,fs);
Channel_capacity = bandwidth*(log2(1+snr));

Signal_Level = 2^(Channel_capacity/(2*bandwidth));