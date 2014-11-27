clear;
clc;
R=0.285;
nt=0.85;
r=1.4;
Cp=1.05;
T3=1300;
P3=105000;
for i=(1:11)
    re(i)=i+5;
    T4s(i)=(T3/(re(i)^((r-1)/r)));
    T4(i)=T3-(nt*(T3-T4s(i)));
    P4(i)=(P3/re(i));
    S(i)=((Cp*log(T4(i)/T3))-(R*log(P4(i)/P3)))
end
plot(S,T4,'-s')
grid('on')
gtext('6');
gtext('7');
gtext('8');
gtext('9');
gtext('10');
gtext('11');
gtext('12');
gtext('13');
gtext('14');
gtext('15');
gtext('16');
gtext('Expantion Ratios');
title('Prediction of Turbine exit temperature at different Turbine expantion ratios');
grid('on')
xlabel('Entropy (kJ/kg-K)')
ylabel('Temperature (Kelvin)')

