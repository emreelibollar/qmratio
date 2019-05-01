clc;

c=(8*(4*pi*10^-7)*154/(sqrt(125)*0.2)).^2;


y=2.*V;
y1=2.*V1;
y2=2.*V2;
y3=2.*V3;

x=c.*I.^2.*r.^2;
x1=c.*I1.^2.*r1.^2;
x2=c.*I2.^2.*r2.^2;
x3=c.*I3.^2.*r3.^2;

sx=c.*sqrt((2.*I.*r.^2.*10^-1).^2+(I.^2.*2.*r.*10^-3).^2);
sx1=c.*sqrt((2.*I1.*r1.^2.*10^-1).^2+(I1.^2.*2.*r1.*10^-3).^2);
sx2=c.*sqrt((2.*I2.*r2.^2.*10^-1).^2+(I2.^2.*2.*r2.*10^-3).^2);
sx3=c.*sqrt((2.*I3.*r3.^2.*10^-1).^2+(I3.^2.*2.*r3.*10^-3).^2);

sy=2.*10;


a=linfitxy(x,y,sx,sy);
a1=linfitxy(x1,y1,sx1,sy);
a2=linfitxy(x2,y2,sx2,sy);
a3=linfitxy(x3,y3,sx3,sy);

w = 1./sigma.^2;
E = w.*slope;
d=sum(E)/sum(w);
ss=sqrt(1./sum(w));


error=(1.76e+11-d)/ss


