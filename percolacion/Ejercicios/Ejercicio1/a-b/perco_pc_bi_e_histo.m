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

scatter(L(1:4:si),pc(1:4:si),'r.','Linewidth',3);
hold on
for i=50:60:si
errorbar(L(i),pc(i),err_pc(i),'r','Linewidth',3);
end


load perco_histo.txt;
data=perco_histo;
%media err_cuadratico 

si=size(data,1);

pc=zeros(1,si);
L=zeros(1,si);
err_pc=zeros(1,si);

for i=1:si
    pc(1,i)=data(i,1);
    L(1,i)=1+i;
    err_pc(1,i)=0.005;
end

scatter(L(2:4:si),pc(2:4:si),'b.','Linewidth',3);
for i=33:60:si
errorbar(L(i),pc(i),err_pc(i),'b','Linewidth',3);
end


pc=zeros(1,si);
L=zeros(1,si);

for i=1:si
    pc(1,i)=0.5927;
    L(1,i)=1+i;
end

plot(L(2:4:si),pc(2:4:si),'g','Linewidth',3);
%axis([0 1025 0.56 0.63])
%xlabel('$\sigma$')
%ylabel('$\sigma$')
%ylabel('pc-p$_{c}$(L)')
xlabel('lado')
ylabel('p$_{c}$(L)')
