% Zooming and Shrinking Images by bilinear.

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-01/imagens/Fig0308(a)(fractured_spine).tif';

I = imread(path);     % Imagem de entrada 
%Extraindo o número de linhas(N) e colunas(M) da imagem original
[M, N] = size(I)

c = input('Entre com o valor da constante, c = ');
lamb = input('Entre com o valor da constante, lambda = ');


%Calculando os níveis de cinza para imagem 
I_out = zeros(M,N);
for m = 1:M
    for n = 1:N
        d=double(I(m,n));
        I_out(m,n) = c.*(d.^lamb); 
    end
end

imshow(I);title('Imagem de entrada');
figure;imshow(I_out,[]);title('Imagem de saida');
imwrite(I_out,'/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-01/imagens/Fig0308(a)pow.tif');