close all;
clc;
fs=5000;
ts=1/fs;
x=[0 0 1 1  0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1];
nx=size(x,2);
p00=-3*pi/4;
p01=3*pi/4;
p10=-pi/4;
p11=pi/4;
a=1;
f=1;

pd=1;
i=1;
while(i<nx+1)
    t=(i-1)/2*pd:ts:(i+1)/2*pd;
    if x(i)==0 && x(i+1)==0
        psk=a*sin(2*pi*f*t+p00);
   
    elseif x(i)==0 && x(i+1)==1
        psk=a*sin(2*pi*f*t+p01);
        
        elseif x(i)==1 && x(i+1)==0
        psk=a*sin(2*pi*f*t+p10);
        
    else 
        psk=a*sin(2*pi*f*t+p11);
    end
   i=i+2;
   plot(t,psk);
   xlabel('time');
   ylabel('phase');
   title('Phase Shift Keying');
 end