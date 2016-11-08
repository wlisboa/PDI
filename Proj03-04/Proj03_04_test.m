% Realiza a fintragem espacial de uma imagem.
% I     =  Imagem de entrada 

clc;
clear all;
close all;

% Caminho do arquivo que dever· ser modificado
path  = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-04/imagens/';
name1 = 'Fig0338(a)(blurry_moon).tif'; % figura de entrada
name2 = 'Fig0338(a)(blurry_moon)_enhanced.tif';                       % figura de saÌda

T = imread(strcat(path,name1));       % Imagem de entrada    
imshow(T);

w = [1 1 1; 1 -8 1; 1 1 1];
w

T2 = im2double(T);
Boarder = imfilter(T2,w,'replicate');
figure; imshow(Boarder);

I_out = T2 - Boarder;


figure; imshow(I_out);