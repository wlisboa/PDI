% Equalização de histogramas.

clc;
clear all;
close all;

% Caminho do arquivo que deverá ser modificado
path  = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-02/imagens/';
name1 = 'Fig0308(a)(fractured_spine).tif'; % figura de entrada
name2 = 'Fig0308(a)_equalizado.tif';       % figura de saída

I = imread(strcat(path,name1));            % Imagem de entrada    
imhist(I);

NBITS = 8;
PROF  = 2.^NBITS;               % Profundidade da imagem

% Extraindo o número de linhas(N) e colunas(M) da imagem original
[M, N] = size(I);

% Calcula o histograma da imagem 
Hist = myhist(I,8);

Hist

%calculando quantidade de pixels
QPIXEL = 0;
for i=1:PROF
    QPIXEL = QPIXEL + Hist(i); 
end    

QPIXEL

%calculando a probabilidade de cada pixel
Hist_prob = zeros(PROF,1);
for i=1:PROF
    Hist_prob(i)= Hist(i)/QPIXEL;
end

%figure; plot(Hist_prob); title('Probabilidade');
%calculando histograma normalizado fdc
Hist_norm = zeros(PROF,1);
for i=1:PROF
    for h=1:i
        Hist_norm(i) = Hist_norm(i) + Hist_prob(h);
    end    
end    

figure;plot(Hist_norm);title('função de transformação'); 

%Substituindo os novos valores de pixels na imagem
for i=0:(PROF - 1)
    for m = 1:M
        for n = 1:N
            if I(m,n)== i
                I_out(m,n) = Hist_norm(i+1);  
            end
        end
    end
end

figure;imhist(I_out);

imwrite(I_out,strcat(path,name2));
figure;imshow(I);title('Imagem de entrada');
figure;imshow(I_out);title('Imagem de saida');