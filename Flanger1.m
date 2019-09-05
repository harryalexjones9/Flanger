[x,fs]=audioread('/Users/harryjones/Documents/MATLAB/GroupProject/Alesis-Fusion-Clean-Guitar-C3.wav');

a=2;
delay=10e-3;
D=ceil(delay*fs);
length=size(x);
y=zeros(length);
z=zeros(length);

for i=1:1:D+1

   y(i)=x(i);
end

for i=D+1:1:length

   z(i)=abs(round(D*cos(2*pi*i/((length-D-1)))));
   y(i)=x(i)+a*x(i-z(i));
end

