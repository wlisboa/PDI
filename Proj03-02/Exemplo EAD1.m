clear all
close all
clc

I = imread('Fig0241(c)(einstein high contrast).tif');
D = zeros(1,256);

[M,N]= size(I);

for r =1:M
    for c=1:1:N
        D(I(r,c))=D(I(r,c))+1;
    end
end

    figure
    x = linspace(1,256,256);
    stem(x,D);
    
figure
imhist(I,256)
        