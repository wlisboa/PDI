% Proj02_03
% Autor: Washington Pinto Lisboa
% Redução das dimensões da imagem através da eliminação de linhas e colunas

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-03/imagens/Fig0220(a).tif';

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

% Zooming
        
%f1=input('Enter the factor by which the image is to be Zoomed: ');
%s2=s*f1;
%k=1;
%l=1;
%for (i=1:f1:s2)
%    for( j=1:f1:s2)
%        C(i,j)= A(k,l);
%        l=l+1;
%    end
%    l=1;
%    k=k+1;
%end

%for (i=1:f1:s2)
%    for (j=2:f1:s2-1)
%        C(i,j)= [C(i,j-1)+ C(i, j+1)]*0.5;
%    end
%end

%for(j=1:f1:s2)
%    for(i=2:f1:s2-1)
%        C(i,j)=[C(i-1,j)+C(i+1,j)]*0.5;
%    end
%end

%for (i=2:f1:s2-1)
%    for (j=2:f1:s2-1)
%        C(i,j)= [C(i,j-1)+ C(i, j+1)]*0.5;
%    end
%end
%figure,imshow(C)
%title('Zoomed Image')