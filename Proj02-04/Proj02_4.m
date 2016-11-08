% Zooming and Shrinking Images by bilinear.

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj02-04/imagens/Fig0220(a).tif';

I = imread(path);     % Imagem de entrada 
%Extraindo o número de linhas(N) e colunas(M) da imagem original
[M, N] = size(I)

info = imfinfo(path);
No = info.XResolution;   % Resolução original
Nd = 2000;               % Resolução desejada

%Calculando o numero de linhas e colunas da imagem de saida
M1 = floor(M*Nd/No)
N1 = floor(N*Nd/No)


%Calculando os coeficientes que relacionam as matrizes
for tm = 1:M1
    Tm(tm) = M - (M-1)*(M1-tm)/(M1-1);    
end

for tn = 1:N1
    Tn(tn) = N - (N-1)*(N1-tn)/(N1-1);    
end

%Calculando os níveis de cinza para imagem 
for m = 1:M1
    for n = 1:N1
        Xi   = floor(Tm(m)); %Arredonda para baixo
        Xip1 = ceil(Tm(m));  %Arredonda para cima
        Yi   = floor(Tn(n));
        Yip1 = ceil(Tn(n));
        U = Tn(n) - Yi;      % Mi
        A = Tm(m) - Xi;      % Lambda 
        % equação bilinear
        I_out(m,n) = A*(U*I(Xip1,Yip1)+(1-U)*I(Xip1,Yi)) + (1-A)*(U*I(Xi,Yip1)+(1-U)*I(Xi,Yi));
    end
end

imshow(I);title('Imagem de entrada');
figure;imshow(I_out);title('Imagem de saida');