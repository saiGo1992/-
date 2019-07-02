clear all;
clc;
syms M m G w0 w q K;
q = linspace(0,pi/2);
M=2; m=0.5; w0=1; K=1.25;
y=zeros(4,100);
for i=1:length(q)
    y(:,i)=vpasolve(w^2*(M+m*w0^2/(w0^2-w^2))==4*K*sin(q(i)),w);
end
normalq=mapminmax(q,0,1);
plot(normalq,y(3,:));
hold on;
plot(normalq,y(4,:));

