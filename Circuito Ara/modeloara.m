clc
clear all
close all
k=3;
m1=1.5;
m2=2;
m3=10;
ti=[0 6];
[t0,s0]=ode45(@circuitoara,ti,[0*m1 m2*0 m3*0]);
[t1,s1]=ode45(@circuitoara,ti,[1*m1 m2*1 m3*1]);
[t2,s2]=ode45(@circuitoara,ti,[2*m1 m2*2 m3*2]);
[t3,s3]=ode45(@circuitoara,ti,[3*m1 m2*3 m3*3]);
[t4,s4]=ode45(@circuitoara,ti,[4*m1 m2*4 m3*4]);
[t5,s5]=ode45(@circuitoara,ti,[5*m1 m2*5 m3*5]);
[t6,s6]=ode45(@circuitoara,ti,[6*m1 m2*6 m3*6]);
[t7,s7]=ode45(@circuitoara,ti,[7*m1 m2*7 m3*7]);
[t8,s8]=ode45(@circuitoara,ti,[8*m1 m2*8 m3*8]);
[t9,s9]=ode45(@circuitoara,ti,[9*m1 m2*9 m3*9]);
graf1=plot(t0,s0(:,k),'-ks','LineWidth',2,'MarkerIndices',1:40:length(s0(:,k)),'MarkerSize',10)
hold on
graf2=plot(t1,s1(:,k),'b','LineWidth',1.5)
plot(t2,s2(:,k),'b','LineWidth',1.5)
plot(t3,s3(:,k),'b','LineWidth',1.5)
plot(t4,s4(:,k),'b','LineWidth',1.5)
plot(t5,s5(:,k),'b','LineWidth',1.5)
plot(t6,s6(:,k),'b','LineWidth',1.5)
plot(t7,s7(:,k),'b','LineWidth',1.5)
plot(t8,s8(:,k),'b','LineWidth',1.5)
plot(t9,s9(:,k),'b','LineWidth',1.5)
xlabel('$t$','Interpreter','latex')
ylabel('$[GFP]$','Interpreter','latex')
legend([graf1,graf2],'$[GFP](0)=0$','$[GFP](0)\neq 0$','Interpreter','latex')