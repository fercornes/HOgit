clear all
clc

formato_graficos_2_columnas

load ns_L_256_p_05928.txt;
data=ns_L_256_p_05928;

si=size(data,1);

ns=zeros(1,si);
s=zeros(1,si);

for i=1:si
    ns(1,i)=data(i,1);
    s(1,i)=i-1;
end

plot(s(3:4:10000),ns(3:4:10000),'k.','Linewidth',3);
%plot(s(10:400),ns(10:400),'k.','Linewidth',3);
%plot(log(s(10:400)),log(ns(10:400)),'k.','Linewidth',3);
hold on
fitlm(log(s(10:400)),log(ns(10:400)))

y=zeros(1,si);
for i=1:si
    y(1,i)=exp(-3.9188)*s(1,i)^(-1.8891);
end
%plot(log(s(10:400)),log(y(10:400)),'r','Linewidth',2);
plot(s(10:400),y(10:400),'r','Linewidth',2);
hold on


%axis([0 1025 0.56 0.63])
xlabel('s')
ylabel('n$_{s}$')
