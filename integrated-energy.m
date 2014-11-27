clc
clear all
P0 = 1.01325;
T0 = 298;
R = 0.2875;
T(1) = 308;
P(1) = 1.01325;
rp = 12;
nc = 0.87;
cv = 44200;
T(3) = 1473;
cp_air = 1.005;
cp_gas = 1.05;
nt = 0.93;
T(5) = 383;
g= 1.4;
dp = 0.05;
t = (g-1)/g ;
P(2) = rp*P(1);
P(3) = P(2) - (dp*P(2));
P(4) = 1.05 ;
P(5) = P(1) ;
T2_s = T(1)* (rp^t);
n = ((rp^t)-1)/((rp^(t/nc))-1);
T(2) = ((T2_s -T(1))/ n)+ T(1) ;
afr = (cv/(cp_gas*(T(3) -T(2))))-1;
ma = 1; 
mf = ma/afr ;
mg = (mf *cv)/(cp_gas*(T(3) - T(2)));
T4_s = T(3) *((P(4)/P(3))^t) ;
T(4) = T(3) - ((T(3) - T4_s)*nt);
S(1) = ma *((cp_air*log(T(1)/T0)) - (R*log (P(1)/P0)));
S(2) = ma *((cp_air*log(T(2)/T0)) - (R*log (P(2)/P0)));
S(3) = mg *((cp_gas*log(T(3)/T0)) - (R*log (P(3)/P0)));
S(4) = mg *((cp_gas*log(T(4)/T0)) - (R*log (P(4)/P0)));
S(5) = mg *((cp_gas*log(T(5)/T0)) - (R*log (P(5)/P0))); 
T(1) = T(1) - 273 ;
T(2) = T(2) - 273 ;
T(3) = T(3) - 273 ;
T(4) = T(4) - 273 ;
T(5) = T(5) - 273 ;
plot(S,T,'-*');
gtext('1');
gtext('2');
gtext('3');
gtext('4');
gtext('5');
gtext('Compressor');
gtext('Combustion Chamber');
gtext('Gas Turbine');
gtext('Heat Recovery');
ylabel('Temperature(^oC)');
xlabel('Specific Entropy(kJ/kg-K)');
title('Representation of Brayton cycle on temperature-entropy diagram');

