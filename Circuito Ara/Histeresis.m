clc
clear all
close all
t1=[0 20];
t2=[20 40];
[t0,s0]=ode45(@circuitoara,t1,[0 0 0]);
[t1,s1]=ode45(@circuitoara2,t2,[s0(end,1) s0(end,2) s0(end,3)]);
graf1=plot(t0,s0(:,3),'-ks','LineWidth',2,'MarkerIndices',1:40:length(s0(:,3)),'MarkerSize',10)
hold on
graf2=plot(t1,s1(:,3),'-bs','LineWidth',2,'MarkerIndices',1:40:length(s1(:,3)),'MarkerSize',10)
xlabel('$t$','Interpreter','latex')
ylabel('$[GFP]$','Interpreter','latex')
legend([graf1 graf2],'$[Ara]> 0$','$[Ara]=0$','Interpreter','latex')