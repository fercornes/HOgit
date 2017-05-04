clear all
clc

formato_graficos_2_columnas

load perco_bi.txt;
data=perco_bi;
%media err_cuadratico 

si=size(data,1);

err_pc=zeros(1,si);
pc=zeros(1,si);
L=zeros(1,si);

for i=1:si
    pc(1,i)=data(i,1);
    err_pc(1,i)=data(i,2);
    L(1,i)=1+i;
end

%scatter(err_pc(75:si),pc(75:si),'o','Linewidth',2);
%fitlm(err_pc(75:si),pc(75:si))
%scatter(err_pc(200:si),pc(200:si),'r.','Linewidth',3);
%hold on
%scatter(L,err_pc,'r.','Linewidth',3);
%scatter(L,-pc+0.5927,'r.','Linewidth',3);
%scatter(L,pc,'r.','Linewidth',3);

%scatter(L,0.5928-pc,'k.','Linewidth',3);
scatter(log(L(10:25)),log(0.5927-pc(10:25)),'k.','Linewidth',3);
%scatter(log(L),log(0.5929-pc),'k.','Linewidth',3);
%hold on

%axis([0 1025 0.56 0.63])
%xlabel('$\sigma$')
%ylabel('$\sigma$')
ylabel('pc-p$_{c}$(L)')
xlabel('lado')
%ylabel('p$_{c}$(L)')
