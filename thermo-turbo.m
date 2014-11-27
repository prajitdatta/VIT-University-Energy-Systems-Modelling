R=0.285;
nc=0.88;
r=1.4;
Cp=1.005;
T1=300;
for i=(5:14)
pr(i)=i;
ns(i)=(1-(pr(i))^((r-1)/r))/(1-((pr(i))^((r-1)/(r*nc))));
T2s(i)=T1*((pr(i))^((r-1)/r));
T2(i)=((T2s(i)-T1)/ns(i))+T1;
S(i)=((Cp*log(T2(i)/T1))-(R*log(pr(i))))
end
plot(S,T2,'-*')
gtext('5');
gtext('6');
gtext('7');
gtext('8');
gtext('9');
gtext('10');
gtext('11');
gtext('12');
gtext('13');
gtext('14');
gtext('Pressure Ratios');
title('Prediction of compressor exit temperature at different compressor pressure ratios');
grid('on')
xlabel('Entropy (KJ/Kg-K)')
ylabel('Temperature (Kelvin)')
