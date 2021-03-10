fs=5000;
t = -0.2:1/fs:0.2;
A1= 10;
A2= 13;
A3= 12;
f1= 13;
f2= 12;
f3= 10;

s1=A1*sin((2*pi*f1*t)+pi/2);
s2=A2*cos((2*pi*f2*t)-pi/3);
s3=A3*sin((2*pi*f3*t)+pi/4);
plot(t,s1,'linewidth',1.5);
hold on
plot(t,s2,'linewidth',1.5);
hold on
plot(t,s3,'linewidth',1.5);
xlabel('Time')
ylabel('Amplitude')
title('Time-Domain representation')
legend('s1','s2','s3');
