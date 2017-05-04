clear all
clc

formato_graficos_2_columnas

load fz_L_64__prob_04_07.txt;
data=fz_L_64__prob_04_07;

si=size(data,1);
bins=100;
paso=64*64;


for j=1:100
    a=(j-1)*paso;
    b=j*paso;
    ns=zeros(1,paso);
    nsinf=zeros(1,paso);
    s=zeros(1,paso);
    fz=zeros(1,paso);
    z=zeros(1,paso);
    %p=0.58+0.03*j/bins;
    p=0.4+0.3*j/bins;
    c=1;
        for i=1:paso
            ns(1,c)=data(a+i,1);
            s(1,c)=i;
            nsinf(1,c)=exp(-4.3651)*s(1,i)^(-1.6738);
            fz(1,c)=ns(1,c)/nsinf(1,c);
            z(1,c)=((p-0.5926)/0.5926)*(s(1,c)^(36/91));
            c=c+1;
                          
        end
        %plot(z(1,42:480),fz(1,42:480),'.');
        plot(z(1,300:400),fz(1,300:400),'.');
        hold on
end

%axis([0 1025 0.56 0.63])
xlabel('z')
ylabel('f')
