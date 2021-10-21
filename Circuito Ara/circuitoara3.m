function cir=circuitoara3(t,s,K4,k4,k3,p1t,ara,h,n,p1,klk,p2t,k5,kda,kdg)
%s(1)=p2+
%s(2)=a
%s(3)=gfp
cir=[K4*s(2)*p2t-K4*s(2)*s(1)-k4*s(1);k3*p1+klk*p2t+s(1)*(k4+k5-klk)-s(2)*(K4*p2t+kda)+K4*s(2)*s(1);s(1)*(k5-klk)+klk*p2t-kdg*s(3)];