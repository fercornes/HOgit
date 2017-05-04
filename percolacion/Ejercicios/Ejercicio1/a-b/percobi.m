clear all
clc

formato_graficos_2_columnas

load perco_bi_nuevo.txt;
data=perco_bi_nuevo;
%media err_cuadratico 

si=size(data,1);

err_pc=zeros(1,si);
pc=zeros(1,si);
L=zeros(1,si);

for i=1:si
    pc(1,i)=data(i,1);
    err_pc(1,i)=data(i,2);
    L(1,i)=3+3*(i-1);
end

plot(L(2:4:si),pc(2:4:si),'r.','Linewidth',3);
%hold on
for i=50:60:si
%errorbar(L(i),pc(i),err_pc(i),'r','Linewidth',3);
end


y=zeros(1,si);
for i=1:si
    y(1,i)=0.59296-0.034326*err_pc(1,i);
end
%plot(err_pc(100:4:si),y(100:4:si),'r','Linewidth',2);
%hold on

%plot(err_pc(40:4:si),pc(40:4:si),'r.','Linewidth',3);
%plot(err_pc(100:4:si),pc(100:4:si),'r.','Linewidth',3);
%fitlm(err_pc(100:4:si),pc(100:4:si))

y=zeros(1,si);
for i=1:si
    y(1,i)=exp(-1.2908)*L(1,i)^(-1.0242);
end

plot(L(7:16),y(7:16),'r','Linewidth',2);
hold on

plot(L(2:si),0.5929-pc(2:si),'r.','Linewidth',3);
%plot(log(L(7:si)),log(0.5929-pc(7:si)),'r.','Linewidth',3);
%plot(log(L(7:16)),log(0.5929-pc(7:16)),'r.','Linewidth',3);
%fitlm(log(L(7:16)),log(0.5929-pc(7:16)))

%axis([0 1000 0.57 0.62])
%xlabel('$\sigma$')
%ylabel('$\sigma$')
ylabel('pc-p$_{c}$(L)')
xlabel('lado')
%ylabel('p$_{c}$(L)')
