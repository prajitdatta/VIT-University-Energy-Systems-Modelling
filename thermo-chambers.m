clear;
clc;
R=0.285;
nc=0.88;
r=1.4;
Cp=1.05;
Cv=44500;
T1=300;
0
for i=(1:10)
pr(i)=i+4;
ns(i)=(1-(pr(i))^((r-1)/r))/(1-((pr(i))^((r-1)/(r*nc))));
T2s(i)=T1*((pr(i))^((r-1)/r));
T2(i)=((T2s(i)-T1)/ns(i))+T1;
 
for j=(1:5)
    Tcomb(j)=(j*100)+900;
    afr(i,j)= (Cv/(Cp*(Tcomb(j)-T2(i))))-1;
end
end
 
plot(pr,afr,'-*')
grid('on')
xlabel ('Compression ratio')
ylabel ('Air-fuel ration')
legend('1000','1100','1200','1300','1400','1500')
