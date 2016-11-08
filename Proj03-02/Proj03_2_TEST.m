% Zooming and Shrinking Images by bilinear.

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-02/imagens/Fig0308(a)(fractured_spine).tif';

I = imread(path);     % Imagem de entrada 
imshow(I);title('Imagem de entrada');

teste = myhist(I,8);
teste
