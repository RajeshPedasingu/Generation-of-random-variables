clc;
clear all;
close all;
N=1000;
p=rand(1,N);
for i=1:N
    if p(i)<=1/3
        p(i)=0;
    else
        p(i)=1;
    end  
end

display(p)

