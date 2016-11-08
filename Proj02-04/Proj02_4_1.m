% Zooming and Shrinking Images by bilinear.
clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-04/imagens/Fig0220(a).tif';
I = imread(path);
imshow(I);title('Imagem de entrada');

% Calculando a nova imagem
I_out = inter_bilinear(path,100);

figure;imshow(I_out);title('Imagem reduzida para 100 DPI');

% Caminho onde a imagem modificada será salva
path1 = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-04/imagens/Fig0220(a)_100dpi.tif';
imwrite(I_out,path1);

% Ampliando novamente a imagem que foi reduzida
I_out1 = inter_bilinear(path1,1250);
figure;imshow(I_out1);title('Imagem ampliada para 1250 DPI');

path2 = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-04/imagens/Fig0220(a)_1250dpi.tif';
imwrite(I_out1,path2);

