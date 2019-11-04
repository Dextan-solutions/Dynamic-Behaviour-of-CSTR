clc;clear;
tspan=[0 20];
Ci=[0.4 0.2 0.1];
[t,C]=ode45('cstr',tspan,Ci);
result=[t C]
plot(t,C(:,1),t,C(:,2),'+',t,C(:,3),'--')
xlabel('time,min');ylabel('concentration,kgmolA/m^3')
legend('CA1','CA2','CA3')
title('Dynamic behaviour of CSTR Reactor Concentration'); grid on