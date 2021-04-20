close all;
clc;
fs=5000;
ts=1/fs;
x=[0 0 1 1  0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1];
nx=size(x,2);
a=1;
f000=9;
f001=11;
f010=13;
f011=15;
f100=17;
f101=19;
f110=21;
f111=23;
p=0;

pd=1;
i=1;
while(i<nx+1)
    t=(i-1)/3*pd:ts:(i+1)/3*pd;
    if x(i)==0 && x(i+1)==0 &&x(i+2)==0
        fsk=a*sin(2*pi*f000*t);
   
    elseif x(i)==0 && x(i+1)==0 && x(i+2)==1
        fsk=a*sin(2*pi*f001*t);
    elseif x(i)==0 && x(i+1)==1 && x(i+2)==0
        fsk=a*sin(2*pi*f010*t);
    elseif x(i)==0 && x(i+1)==1 && x(i+2)==1
        fsk=a*sin(2*pi*f011*t);
    elseif x(i)==1 && x(i+1)==0 && x(i+2)==0
        fsk=a*sin(2*pi*f100*t);
    elseif x(i)==1 && x(i+1)==0 && x(i+2)==1
        fsk=a*sin(2*pi*f101*t);   
    elseif x(i)==1 && x(i+1)==1 && x(i+2)==0
        fsk=a*sin(2*pi*f110*t);
    else 
        ask=a11*sin(2*pi*f*t);
    end
   i=i+3;
   plot(t,fsk);
   xlabel('time');
   ylabel('frequency');
   title('Frequency Shift Keying');
 end