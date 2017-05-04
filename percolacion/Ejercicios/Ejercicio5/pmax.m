clear all
clc

formato_graficos_2_columnas

load fz_L_64__prob_04_07.txt;
data=fz_L_64__prob_04_07;

si=size(data,1);
bins=100;
paso=64*64;
ns=zeros(paso,bins);
prob=zeros(1,bins);


for j=1:bins %para j=65 p>pc
    a=(j-1)*paso;
    b=j*paso;
    prob(1,j)=0.4+0.3*j/bins;
        for i=1:paso
            ns(i,j)=data(a+i,1);
        end
end

p_max=zeros(1,paso);
for i=1:paso %me muevo en los tamaños
    a=0;
    for j=1:bins %me muevo en las prob
        if ns(i,j)>a
            a=ns(i,j);
            p=prob(1,j);
        end
    end
    p_max(1,i)=p;
end

%plot(2:300,p_max(2:300),'.');

plot(2:300,(-p_max(2:300)+0.5926)/0.5926,'k.','Linewidth',3);
%plot(log(10:90),log((-p_max(10:90)+0.5926)/0.5926),'k.','Linewidth',3);
hold on
fitlm(log(10:90),log((-p_max(10:90)+0.5926)/0.5926))

y=zeros(1,si);
for i=1:paso
    y(1,i)=exp(0.01599)*i^(-0.4942);
end
plot(10:90,y(10:90),'r','Linewidth',2);


%axis([0 1025 0.56 0.63])
xlabel('s')
ylabel('-$\epsilon_{max}$')
