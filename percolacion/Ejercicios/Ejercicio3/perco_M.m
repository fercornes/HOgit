clear all
clc

formato_graficos_2_columnas

load perco_M.txt;
data=perco_M;

si=size(data,1);

L=zeros(1,si);
M=zeros(1,si);

for i=1:si
    M(1,i)=data(i,1);
    L(1,i)=i*5;
end

plot(L(2:si),M(2:si),'.');
%plot(log(L(2:si)),log(M(2:si)),'.');
hold on
fitlm(log(L(2:si)),log(M(2:si)))

y=zeros(1,si);
for i=1:si
    y(1,i)=exp(-4.0078)*L(1,i)^(1.841);
end
plot(L,y,'r','Linewidth',2);

%axis([0 1025 0.56 0.63])
xlabel('L')
ylabel('M')
