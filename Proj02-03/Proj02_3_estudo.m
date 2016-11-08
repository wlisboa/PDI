% Proj02_03
% Autor: Washington Pinto Lisboa
% Redução das dimensões da imagem através da eliminação de linhas e colunas

clc;
clear all;
close all;



I= [8  6 13  9;
    1 13  1 15;
    5  4  7  7;
    5 10  3  7]

imresize(I, [10,10],'nearest')


J=[1 4 7 4 3 6]

imresize(J, [1,9],'nearest')

