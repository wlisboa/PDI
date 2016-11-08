% calcula o histograma de uma imagem.
% I     =  Imagem de entrada
% NBITS =  Quantidade de bits da imagem

function [Hist] = myhist(I,NBITS) 

L  = 2.^NBITS;     % Profundidade da imagem

% Extraindo o número de linhas(N) e colunas(M) da imagem original
[M, N] = size(I);

% Calcula o histograma da imagem
Hist = zeros(L,1);

%calculando histograma
for i=0:(L - 1)
    for m = 1:M
        for n = 1:N
            if I(m,n)== i
                Hist(i+1) = Hist(i+1)+1;  
            end
        end
    end
end

%figure; plot(Hist); title('Histograma');