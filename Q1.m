clc
clear all
close all

prompt="enter N value=",
N=input(prompt)

n=randi([-2 2],N,1);
c=0;d=0;e=0;f=0;g=0;


for i=1:N;
    if n(i)==-2;
        c=c+1;
    elseif n(i)==-1;
        d=d+1;
    elseif n(i)==0;
        e=e+1;
    elseif n(i)==1;
        f=f+1;
    else n(i)==2;
        g=g+1;
    end
end

y=[c d e f g];
x=-2:1:2;
figure;
bar(x,y,1)
title('using bar command')
xlabel('<----sample values-->')
ylabel('<---frequency of samples--->')
figure;
histogram(n)
title('using histogram command')
xlabel('<----sample values-->')
ylabel('<---frequency of samples--->')


figure;
bar(x,y,0.8,"r")
hold on

histogram(n)
title('compare with and without histogram command')
xlabel('<----sample values-->')
ylabel('<---frequency of samples--->')
legend('without histogram command','with histogram command','location','northwest')

hold off

figure;
histfit(n)
xlabel('<----sample values-->')
ylabel('<---frequency of samples--->')
legend('histogram','normal density function','location','northwest')



 

