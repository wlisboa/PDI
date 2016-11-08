% Proj02_02
% Autor: Washington Pinto Lisboa
% Redu��o dos n�veis de cinza de uma imagem

% Caminho do arquivo que dever� ser modificado
path = '/Users/wlisboa/Documents/MATLAB/Fig0221.tif';

% Novo n�vel de cinza da imagem 
% K � o n�mero de bits, para imagens bn�rias inserir 0
K = 0; 
Nc = 2 .^ K;

I = imread(path);     % Imagem de entrada 
%Extraindo o n�mero de linhas(M) e colunas(N) da imagem
[M, N] = size(I);

%Criando uma imagem de saida do mesmo tamanho da de entrada
I_out = zeros(M,N);

%Calculando os novos n�veis de cinza para imagem
for m = 1:M
    for n = 1:N
        I_out(m,n) = (Nc/256)*I(m,n);
    end
end

%imshow(I);title('Imagem de entrada');
figure();imshow(I_out,[]);title('Imagem Gerada');