clc
clear all
A=613.35;
B=0.121;
C=0.395;
LoLoc=81.38;
LaLoc=21.21;
LoStd=82.5;
n=172;
b=360*((n-81)/364);
Da=23.45*sind(360*((n +284)/365));
Dl=(2/15)*(acosd(-tand(Da)*tand(LaLoc)));
Srt=12-(0.5*Dl)
Sst=(0.5*Dl)
for a=6:18
    w(a)=a;
    Eot(a)=(9.87*sind(2*b))-(7.53*cosd(b))-(1.5*sind(b));
    St(a)=(a)-((4*(LoStd-LoLoc)+(Eot(a)/4))/60);
    Ha(a)=15*(St(a)-12);
    Cz(a)=(sind(LaLoc)*sind(Da))+(cosd(LaLoc)*cosd(Da)*cosd(Ha(a)));
    Ibn(a)=A*exp((-B)/Cz(a));
    Id(a)=C*Ibn(a);
    Ib(a)=Ibn(a)*Cz(a);
    Ig(a)=Ib(a)+Id(a);
end
plot(w,Ib,w,Id,w,Ig);
title('Estimated Solar Radiations at Bhilai on 21st June');
xlabel('Watch Time(hr)');
ylabel('Solar Radiation(W/m^2)');
gtext('I_g');
gtext('I_b');
gtext('I_d');
gtext('Sunrise Time = 5 hr 21 min');
gtext('Sunset Time = 18 hr 39 min');
grid('On');
