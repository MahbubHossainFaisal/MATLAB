close all;
clc;
fs=5000;
ts=1/fs;
x=[0 0 1 1  0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1];
nx=size(x,2);
a000=1;
a001=1.5;
a010=2;
a011=2.5;
a100=3;
a101=3.5;
a110=4;
a111=4.5;

f000=1;
f001=1.5;
f010=2;
f011=2.5;
f100=3;
f101=3.5;
f110=4;
f111=4.5;

p000=0;
p001=pi/4;
p010=pi/2;
p011=3*pi/4;
p100=pi;
p101=5*pi/4;
p110=3*pi/2;
p111=7*pi/4;

pd=2;
i=1;
while(i<nx+1)
    t=(i-1)/3*pd:ts:(i+1)/3*pd;
    if x(i)==0 && x(i+1)==0 &&x(i+2)==0
        ask=a000*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f000*t);
        psk=a000*sin(2*pi*f000*t+p000);
   
    elseif x(i)==0 && x(i+1)==0 && x(i+2)==1
        ask=a001*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f001*t);
        psk=a000*sin(2*pi*f000*t+p001);
    elseif x(i)==0 && x(i+1)==1 && x(i+2)==0
        ask=a010*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f010*t);
        psk=a000*sin(2*pi*f000*t+p010);
    elseif x(i)==0 && x(i+1)==1 && x(i+2)==1
        ask=a011*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f011*t);
        psk=a000*sin(2*pi*f000*t+p011);
    elseif x(i)==1 && x(i+1)==0 && x(i+2)==0
        ask=a100*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f100*t);
        psk=a000*sin(2*pi*f000*t+p100);
    elseif x(i)==1 && x(i+1)==0 && x(i+2)==1
       ask=a101*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f101*t);
        psk=a000*sin(2*pi*f000*t+p101);
    elseif x(i)==1 && x(i+1)==1 && x(i+2)==0
       ask=a110*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f110*t);
        psk=a000*sin(2*pi*f000*t+p110);
    else 
        ask=a111*sin(2*pi*f000*t);
        fsk=a000*sin(2*pi*f111*t);
        psk=a000*sin(2*pi*f000*t+p111);
    end
   i=i+3;
   subplot(3,1,1);
   plot(t,ask);
   hold on
   xlabel('Time');
   ylabel('Amplitude');
   title('Amplitude Shift Keying');
   subplot(3,1,2);
   plot(t,fsk);
   hold on
   xlabel('Time');
   ylabel('Frequency');
   title('Frequency Shift Keying');
   subplot(3,1,3);
   plot(t,psk);
   hold on
   xlabel('Time');
   ylabel('Phase');
   title('Phase Shift Keying');
   
end
 hold off