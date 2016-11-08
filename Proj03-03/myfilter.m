% executa a filtragem espacial de uma imagem.
% I     =  Imagem de entrada
% NBITS =  Quantidade de bits da imagem

function [Ifilt] = myfilter(I,w) 

% Extraindo o número de linhas(N) e colunas(M) da imagem original
[M, N] = size(I);

% tamanho da mascara
[Tm,Tn] = size(w);

% Criando uma imagem para processamento com duas linhas e duas colunas a
% mais
Ip = zeros(M+2,N+2);

% copia a imagem menor para dentro da imagem ampliada
for i=1:M
    for j = 1:N
        Ip(i+1,j+1) = I(i,j);  
    end
end

% Duplica as ultimas linhas e as ultimas colunas
Ip(1,1:(N+2))=Ip(2,1:(N+2));
Ip((M+2),1:(N+2))=Ip((M+1),1:(N+2));
Ip(1:(M+2),1) = Ip(1:(M+2),2);
Ip(1:(M+2),(N+2)) = Ip(1:(M+2),(N+1));

Ifilt = zeros(M,N);

% Faz o a varredura da imagem aplicando o filtro
for i=1:M
    for j = 1:N
        for k=1:Tm
            for l=1:Tm
                Ifilt(i,j) = Ifilt(i,j) + w(k,l)*Ip(i+(k-1),j+(l-1));
            end
        end
        Ifilt(i,j) = round(Ifilt(i,j));
    end
end


%figure; plot(Hist); title('Histograma');