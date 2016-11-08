% Proj02_03
% Autor: Washington Pinto Lisboa
% Ampliação das dimensões da imagem através da duplicação de linhas e colunas

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-03/Fig0219(zoom512).tif';

I = imread(path);     % Imagem de entrada 

% Zooming        
f=2;

[M N]=size(I)

M1=M*f
N1=N*f

k=1;
l=1;
for (i=1:f:M1)
   for( j=1:f:N1)
       I_out(i,j)= I(k,l);
       l=l+1;
   end
   l=1;
   k=k+1;
end

for (i=1:f:M1)
   for (j=2:f:N1)
       I_out(i,j)=I_out(i,j-1);
   end
end

for(j=1:f:M1)
    for(i=2:f:N1)
        I_out(i,j)=I_out(i-1,j);
    end
end

for (i=2:f:M1)
    for (j=2:f:N1)
        I_out(i,j)= I_out(i,j-1);
    end
end

imshow(I);
figure,imshow(I_out)
title('Imagem ampliada')
imwrite(I_out,'Fig0219(zoom1024).tif');


