% Autor: Washington Pinto Lisboa
% Aprimoramento de uma imagem utilizando mascara de unsharp 

clc;
clear all;
close all;

% Caminho do arquivo que dever· ser modificado
path  = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-05/imagens/';
name1 = 'Fig0340(a)(dipxe_text).tif';           % figura de entrada
name2 = 'Fig0340(a)(dipxe_text).enhanced.tif';  % figura de saÌda

% Fator boost
K = 1;

I = imread(strcat(path,name1));       % Imagem de entrada    
imshow(I);title('Imagem original');


w = (1/9)*[1 1 1; 1 1 1; 1 1 1 ];
w

I2 = im2double(I);
Blurred = myfilter(I2,w);
figure; imshow(Blurred);title('Imagem borrada');

Gmask = I2 - Blurred; 
figure; imshow(Gmask,[]);title('Mascara');

I_out = I2 + K*Gmask;
figure; imshow(I_out);title('Aprimorada');

% Fator para high-boost
K = 4.5;
I_out_h = I2 + K*Gmask;
figure; imshow(I_out_h);title('Aprimorada hiboost');
