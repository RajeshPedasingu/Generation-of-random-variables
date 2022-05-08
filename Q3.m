clc
clear all
close all;


N=10000;

xr=randi([-2 2],N,1);%uniform random variables  range [-2 2]

p=gauss(N);%gaussian rrandom variables range [-2 2]



subplot(2,2,1)
y3=clt(1,xr,N);
histogram(y3)
title('central limit theorem for sanpme size n=1')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,2)
y2=clt(5,xr,N);
histogram(y2)
title('central limit theorem for sample size n=5')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,[3 4])
y1=clt(10,xr,N);
histogram(y1)
title('central limit theorem for sample size n=10')
xlabel('sample values')
ylabel('frequency of samples')



figure;

subplot(2,2,1)
y4=clt(10,p,N);
histogram(y4)
title('CLT for gaussian RV for sample size n=1')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,2)
y5=clt(5,p,N);
histogram(y5)
title('CLT for gaussian RV for sample size n=5')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,[3 4])
y6=clt(1,p,N);
histogram(y6)
title('CLT for gaussian RV for sample size n=10')
xlabel('sample values')
ylabel('frequency of samples')







function out1=gauss(N)

m=0;
sigma=1;
p=m+randn(1,N).*sigma;
out1=p;

end










function out=clt(n,xr,N)

k=N/n;
p=reshape(xr,n,k);
if n==1;
    c=p;
else
c=sum(p);
end
v=var(xr);
m=mean(xr);

for i=1:k
    z(i)=c(i)-n*m/sqrt(v*n);
    out=z;
end

end


