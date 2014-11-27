clear;

clc;

a=232.87;

b=0.171;

c=1.611;

n=202;

Latitude=12.9833;

LST=82.5;

LL=79.1833;

Delta=23.45*sind((360/365)*(284+n));

Omega=acosd(-tand(Delta)*tand(Latitude));

Smax=(2/15)*Omega;

Sunrise=12-(0.5*Smax);

Sunset=12+(0.5*Smax);

B=(360/365)*(n-81);

2Dr.T.Srinivas                                                                                                                                                                          

EOT=9.87*sind(2*B)-7.57*cosd(B)-1.5*sind(B);

Betta=0.9*Latitude;

m=2;

alpha=0.95;

Rhod=0.15;

for i= 1:13

WT(i)=i+5

ST(i)=WT(i)-((4*(LST-LL))+EOT)/60

OmegaS(i) =15*(ST(i)-12)    

TetaZd(i)=acosd((sind(Delta)*sind(Latitude))+(cosd(Delta)*cosd(Latitude)*co

sd(OmegaS(i))))

    Incident(i)=acosd((sind(Delta)*sind(Latitude-

Betta))+(cosd(Delta)*cosd(Latitude-Betta)*cosd(OmegaS(i))))

Rb(i)=cosd(Incident(i))/cosd(TetaZd(i))

Ibn(i)=a*exp(-b/cosd(TetaZd(i)))

Ib(i)=Ibn(i)*cosd(TetaZd(i))

It(i)=Ib(i)*Rb(i)

Ref(i)=asind(sind(Incident(i))/1.52)

    Rho1(i)=(sind(Ref(i)-Incident(i))/sind(Ref(i)+Incident(i)))^2

    Rho2(i)=(tand(Ref(i)-Incident(i))/tand(Ref(i)+Incident(i)))^2

tr1(i)=(1-Rho1(i))/(1+(2*m-1)*Rho1(i))

tr2(i)=(1-Rho2(i))/(1+(2*m-1)*Rho2(i))

tr(i)=(tr1(i)+tr2(i))/2

ta(i)=exp(-(2*0.004*15/cosd(Ref(i))))

t(i)=tr(i)*ta(i)

talpha(i)=t(i)*alpha/1-(1-alpha)*Rhod

S(i)=Ib(i)*Rb(i)*talpha(i)

eff(i)=S(i)*100/It(i)

end

Latitude1=13.0839;

LST1=82.5;

LL1=80.2700;

Delta1=23.45*sind((360/365)*(284+n));

Omega1=acosd(-tand(Delta1)*tand(Latitude1));

Smax1=(2/15)*Omega1;

Sunrise1=12-(0.5*Smax1);

Sunset1=12+(0.5*Smax1);

B=(360/365)*(n-81);

EOT=9.87*sind(2*B)-7.57*cosd(B)-1.5*sind(B);

Betta=0.9*Latitude1;

for i= 1:13

WT1(i)=i+5

ST1(i)=WT1(i)-((4*(LST1-LL1))+EOT)/60

OmegaS1(i) =15*(ST1(i)-12)    

TetaZd1(i)=acosd(sind(Delta1)*sind(Latitude1)+cosd(Delta1)*cosd(Latitude1)*

cosd(OmegaS1(i)))

    Incident1(i)=acosd(sind(Delta)*sind(Latitude-

Betta)+cosd(Delta)*cosd(Latitude-Betta)*cosd(OmegaS1(i)))

Rb1(i)=cosd(Incident1(i))/cosd(TetaZd1(i))

Ibn1(i)=a*exp(-b/cosd(TetaZd1(i)))

Ib1(i)=Ibn1(i)*cosd(TetaZd1(i))

It1(i)=Ib1(i)*Rb1(i)

Ref1(i)=asind(sind(Incident1(i))/1.52)

    Rho11(i)=(sind(Ref1(i)-Incident1(i))/sind(Ref1(i)+Incident1(i)))^2

    Rho21(i)=(tand(Ref1(i)-Incident1(i))/tand(Ref1(i)+Incident1(i)))^2

tr11(i)=(1-Rho11(i))/(1+(2*m-1)*Rho11(i))

tr21(i)=(1-Rho21(i))/(1+(2*m-1)*Rho21(i))

tr1(i)=(tr11(i)+tr21(i))/2

ta1(i)=exp(-(2*0.004*15/cosd(Ref1(i))))

t1(i)=tr1(i)*ta1(i)

talpha1(i)=t1(i)*alpha/1-(1-alpha)*Rhod

3Dr.T.Srinivas                                                                                                                                                                          

S1(i)=Ib(i)*Rb1(i)*talpha1(i)

eff1(i)=S1(i)*100/It1(i)

end

plot(ST,eff,ST1,eff1)

xlabel('Solar Time in Hours')

ylabel('Optical efficiency')

legend('eff of VIT','eff of Chennai')

gtext('VIT')

gtext('chennai')
