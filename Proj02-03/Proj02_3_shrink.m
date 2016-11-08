% Proj02_03
% Autor: Washington Pinto Lisboa
% Redução das dimensões da imagem através da eliminação de linhas e colunas

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-03/imagens/Fig0219(rose1024).tif';

I = imread(path);     % Imagem de entrada 

% Reduzindo 
f=input('Entre com o fator de redução da imagem: ');

[M N]=size(I)

M1 = M/f
N1 = N/f

k=1;
l=1;
for i=1:M1
    for j=1:N1
        I_out(i,j)=I(k,l);
        l=l+f;
    end
    l=1;
    k=k+f;
end
figure,imshow(I)
title('Imagem Original');
figure,imshow(I_out)
title('Imagem Reduzida');
%imwrite(I_out,'Fig0219(shr32).tif');



