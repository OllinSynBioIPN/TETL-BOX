clc 
clear all
close all
arav=0:.0001:1;
K4=.8;
k4=.4;
k3=5;
p1t=8;
h=.2;
n=1;
klk=0;
p2t=8;
k5=7;
kda=.6;
kdg=.4;
ti=[0 100];
for i=1:length(arav)
ara=arav(i);
p1=(ara.^n*p1t)./(h^n+ara.^n);
[t0,s0]=ode45(@(t,s)circuitoara3(t,s,K4,k4,k3,p1t,ara,h,n,p1,klk,p2t,k5,kda,kdg),ti,[0 0 0]);
gfp1(i)=s0(end,3);
end
plot(arav,gfp1,'LineWidth',2)
xlabel('$[Ara]$','Interpreter','latex')
ylabel('$[GFP]$','Interpreter','latex')