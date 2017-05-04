clear all
clc

formato_graficos_2_columnas

load ns_L_64_p_05926.txt;
data=ns_L_64_p_05926;

si=size(data,1);

ns=zeros(1,si);
s=zeros(1,si);

for i=1:si
    ns(1,i)=data(i,1);
    s(1,i)=i-1;
end

ordenada=-4.1526;
q0=exp(ordenada);

xi=zeros(1,si);
yi=zeros(1,si);
chi2=zeros(1,201);
tau=zeros(1,201);

for j=1:201
    a=0;
    tau(1,j)=(j-1)/100+1;
        for i=10:400
        xi(1,i)=log(s(1,i));
        yi(1,i)=log(ns(1,i)/q0);
        a=a+(yi(1,i)+tau(1,j)*xi(1,i))^2;
        end
    chi2(1,j)=a;    
end

y1=plot(tau,chi2/1000,'r','Linewidth',3);
hold on
    
    

%plot(s(10:400),ns(10:400),'k.','Linewidth',3);
%plot(log(s(10:400)),log(ns(10:400)),'k.','Linewidth',3);
%hold on
%fitlm(log(s(10:400)),log(ns(10:400)))



%axis([0 1025 0.56 0.63])
xlabel('$\tau$')
ylabel('$\chi^2$')
