
fs=10000;
t = 1:1/fs:5;

A1= 10;
A2= 13;
A3= 12;
f1= 13;
f2= 12;
f3= 10;
sd = 0.5;
s1=A1*sin((2*pi*f1*t)+pi/2);
s2=A2*cos((2*pi*f2*t)-pi/3);
s3=A3*sin((2*pi*f3*t)+pi/4);
st=s1+s2+s3;



nt = sd*randn(size(st));
noisy_signal = st+nt;

ps = (A1^2/2)+(A2^2/2)+(A3^2/2);
pn = sd^2;
snr_1 = ps/pn;
snr_1_db = 10*log10(snr_1);

p_st = sum(st.^2)/length(st);
p_nt = sum(nt.^2)/length(nt);
snr_2 = p_st/p_nt;
snr_2_db = 10*log10(snr_2);

com = [snr_1 snr_2];
com_db = [snr_1_db snr_2_db];
BW_st= obw(st,fs);
channel_capacity_1 = BW_st*log2(1+snr_1);
channel_capacity_2 = BW_st*log2(1+snr_2);
compare_channel = [channel_capacity_1 channel_capacity_2];

