A1 = 18;
A2 = 71;
Sinusoid = 3733;
j1 = 77*(pi/180);
j2 = 30*(pi/180);
t = -5/Sinusoid:3/2000000:5/Sinusoid
x1 = A1*cos(2*pi*Sinusoid*t+j1);
plot(t,x1)
xlabel('Time')
ylabel('Amplitude')
x2 = A2*cos(2*pi*Sinusoid*t+j2);
plot(t,x2);
xlabel('Time')
ylabel('Amplitude')
plot(t,angle(x1),t,angle(x2))
xlabel('Time')
ylabel('Amplitude')
max(x1)
max(x2)
subplot(3,1,1)
plot(t,x1);
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2)
plot(t,x2);
xlabel('Time')
ylabel('Amplitude')
x3 = x1 + x2;
subplot(3,1,3)
plot(t,x3);
xlabel('Time')
ylabel('Amplitude')
plot(t,abs(x3))
hold on
plot(t,angle(x3))
hold off