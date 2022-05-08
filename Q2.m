clc;
clear all;
close all;



clc
clear all
close all

%-------for sigma=sqrt(1)------
sigma=sqrt(1);
figure;
subplot(2,2,1)
% for N=10 samples
x1=gen(0,sigma,10);
histogram(x1)
title('histogram(N=10,σ^2=1)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,2)
% for N=100 samples
x2=gen(0,sigma,100);
histogram(x2)
title('histogram(N=100,σ^2=1)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,[3 4])
% for N=10000 samples

x3=gen(0,sigma,10000);
histogram(x3)
title('histogram(N=10000,σ^2=1)')
xlabel('sample values')
ylabel('frequency of samples')


%----for sigma(sqrt(10))-------
sigma=sqrt(10);
figure;
subplot(2,2,1)
% for N=10 samples
x4=gen(0,sigma,10);
histogram(x4)
title('histogram(N=10,σ^2=10)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,2)
% for N=100 samples
x5=gen(0,sigma,100);
histogram(x5)
title('histogram(N=100,σ^2=10)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,[3 4])
% for N=10000 samples

x6=gen(0,sigma,10000);
histogram(x6)
title('histogram(N=10000,σ^2=10)')
xlabel('sample values')
ylabel('frequency of samples')

%-----------for sigma=sqrt(0.1)---------


sigma=sqrt(0.1);
figure;
subplot(2,2,1)
% for N=10 samples
x7=gen(0,sigma,10);
histogram(x7)
title('histogram(N=10,σ^2=0.1)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,2)
% for N=100 samples
x8=gen(0,sigma,100);
histogram(x8)
title(' histogram (N=100,σ^2=0.1)')
xlabel('sample values')
ylabel('frequency of samples')

subplot(2,2,[3 4])
% for N=10000 samples

x9=gen(0,sigma,10000);
histogram(x9)
title('histogram (N=10000,σ^2=0.1)')
xlabel('sample values')
ylabel('frequency of samples')


%--------comparision N=10000 case----------

figure;
subplot(3,1,1)
histfit(x3)
title('comparision(N=10000,mean=0,σ^2=1)')
xlabel('sample values')
ylabel('frequency of samples')
legend('histogram','normal density function')


subplot(3,1,2)
histfit(x6)
title('comparision(N=10000,mean=0,σ^2=10)')
xlabel('sample values')
ylabel('frequency of samples')
legend('histogram','normal density function')

subplot(3,1,3)
histfit(x9)
title('comparision(N=10000,mean=0,σ^2=0.1)')
xlabel('sample values')
ylabel('frequency of samples')
legend('histogram','normal density function')

%------------end-------------



function out=gen(m,sigma,N)

p=m+randn(1,N).*sigma;

out=p;

end

