clc
clear all
 
R = 8.314
for i = 300 : 1000 
    a1 = 0.03262451E2;
    a2 = 0.15119409E-2;
    a3= -0.03881755E-4;
    a4 = 0.05581944E-7;
    a5 = -0.02474951E-10;
    a6 = -0.14310539E5;
    T(i) = i;
    hCO(i) = (R*T(i)*( a1 + ((a2*T(i))/2) + (a3*(T(i)^2)/3) + (a4*(T(i)^3)/4) + ( a5*(T(i)^4)/5) + ( a6/T(i))))+110541 ;
end
  
for j = 1000 : 5000
    a1 =0.03025078E2;
    a2 = 0.14426885E-2;
    a3= -0.05630827E-5 ;
    a4 = 0.10185813E-9;
    a5 = -0.06910951E-13;
    a6 = -0.14268350E5;
    T(j) = j;
    hCO(j) = R*T(j)*( a1 + ((a2*T(j))/2) + (a3*(T(j)^2)/3) + ( a4*(T(j)^3)/4) + ( a5*(T(j)^4)/5) + ( a6/T(j)))+110541 ;
end
 
 
for k = 300 : 1000
     b1 = 0.03298124E2;
   b2 = 0.03474982E-1;
    b3=  -0.063546961E-4;
    b4 = 0.06968581E-7;
    b5 = -0.02506588E-10;
    b6 = -0.03020811E6;
    T(k) = k;
    hH2O(k) = R*T(k)*( b1 + ((b2*T(k))/2) + (b3*(T(k)^2)/3) + ( b4*(T(k)^3)/4) + ( b5*(T(k)^4)/5) + ( b6/T(k)))+241845 ;
end
 
for l = 1000 : 5000
    b1 =0.02672145E2;              
    b2 =0.03056293E-1;
    b3= -0.0873026E-5;
    b4 = 0.12009964E-9;
    b5 =-0.06391618E-13;
    b6 = -0.02989921E6;
    T(l) = l;
    hH2O(l) = R*T(l)*( b1 + ((b2*T(l))/2) + (b3*(T(l)^2)/3) + ( b4*(T(l)^3)/4) + ( b5*(T(l)^4)/5) + ( b6/T(l)))+241845 ;
 
end
 
plot(T,hCO,T,hH2O)
ylabel ('Enthalpy ,kJ/kmol');
xlabel('Temperature , Kelvin');
gtext('CO')
gtext('H_2O')
title('Enthalpy versus temperature for CO and H_2O');
