clear all
clc

formato_graficos_2_columnas

load perco_P_L_64.txt;
data=perco_P_L_64;

si=size(data,1);

prob=zeros(1,si);
P=zeros(1,si);
bins=100;

for i=1:si
    P(1,i)=data(i,1);
    prob(1,i)=i*0.04/bins+0.58;
end

plot(prob,P,'.','Linewidth',3)
%plot(prob-0.5926,P,'.b','Linewidth',3);
%plot(log(prob(32:65)-0.5926),log(P(32:65)),'.','Linewidth',3);
%plot(log(prob(65:si)-0.5926),log(P(65:si)),'.','Linewidth',3);
hold on
%fitlm(log(prob(65:si)-0.5926),log(P(65:si)))

y=zeros(1,si);
for i=1:si
    y(1,i)=exp(0.9117)*(prob(1,i)-0.5926)^(0.4971);
end
%plot(log(s(10:400)),log(y(10:400)),'r','Linewidth',2);

%plot(prob(65:si)-0.5926,y(65:si),'--r','Linewidth',2);
%hold on


load perco_P_L_256.txt;
data=perco_P_L_256;

si=size(data,1);

prob=zeros(1,si);
P=zeros(1,si);
bins=100;

for i=1:si
    P(1,i)=data(i,1);
    prob(1,i)=i*0.04/bins+0.58;
end

plot(prob,P,'.','Linewidth',3);
%plot(prob-0.5926,P,'.','Linewidth',3);
%plot(log(prob(32:si)-0.5926),log(P(32:si)),'.','Linewidth',3);
%plot(log(prob(45:65)-0.5928),log(P(45:65)),'.','Linewidth',3);
hold on
%fitlm(log(prob(45:65)-0.5928),log(P(65:65)))

y=zeros(1,si);
for i=1:si
    y(1,i)=exp(1.3369)*(prob(1,i)-0.5928)^(0.51565);
end
%plot(log(s(10:400)),log(y(10:400)),'r','Linewidth',2);

%plot(prob(45:65)-0.5928,y(45:65),'r','Linewidth',2);
%hold on

x1=zeros(1,100);
x2=zeros(1,100);
y1=zeros(1,100);
y2=zeros(1,100);
for i=1:2000
    y1(1,i)=0;
    x1(1,i)=i*0.5927/2000;
    x2(1,i)=(i-1)*0.0001+0.5927;
    y2(1,i)=(x2(1,i)-0.5927)^(0.138);
end
plot(x1,y1,'r','Linewidth',2);
plot(x2,y2,'r','Linewidth',2);

axis([0.58 0.62 0 0.6])
ylabel('P')
%xlabel('p$_{c}$(L)')
xlabel('p')