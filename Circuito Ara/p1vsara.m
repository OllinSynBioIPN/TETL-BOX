clc
clear all
close all
ara=0:.01:10;
n=2;
p1t=.6;
h=.8;
p1act=(ara.^n*p1t)./(h^n+ara.^n);
plot(ara,p1act,'-ks','LineWidth',2,'MarkerIndices',1:40:length(p1act),'MarkerSize',10)
xlabel('$[Ara]$','Interpreter','latex')
ylabel('$[P_1^+]$','Interpreter','latex')
text(6,.3,'$\left[P_1^+\right]=\frac{\left[Ara\right]^n{\left[P_{1,T}\right]}}{H^n+\left[Ara\right]^n}$','Interpreter','latex','FontSize',15)