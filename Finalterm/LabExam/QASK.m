close all;
clc;
fs=5000;
ts=1/fs;
x=[0 0 1 1  0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 1 1 1];
nx=size(x,2);
a00=2;
a01=3;
a10=4;
a11=5;
f=1;
p=0;

pd=1;
i=1;
while(i<nx+1)
    t=(i-1)/2*pd:ts:(i+1)/2*pd;
    if x(i)==0 && x(i+1)==0
        ask=a00*sin(2*pi*f*t);
   
    elseif x(i)==0 && x(i+1)==1
        ask=a01*sin(2*pi*f*t);
        
        elseif x(i)==1 && x(i+1)==0
        ask=a10*sin(2*pi*f*t);
        
    else 
        ask=a11*sin(2*pi*f*t);
    end
   i=i+2;
   plot(t,ask);
   xlabel('time');
   ylabel('amplitude');
   title('Amplitude Shift Keying');
 end
   
        