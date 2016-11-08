% Realiza a fintragem espacial de uma imagem.
% I     =  Imagem de entrada 

clc;
clear all;
close all;

% Caminho do arquivo que dever· ser modificado
path  = '/Users/wlisboa/Documents/Documentos VBox /Mestrado/PDI/Trabalhos/Proj03-03/imagens/';
name1 = 'Fig0335(a)(ckt_board_saltpep_prob_pt05).tif'; % figura de entrada
name2 = 'Fig0335(a)(saida).tif';                       % figura de saÌda

T = imread(strcat(path,name1));       % Imagem de entrada    
imshow(T);

w = ones(3,3);
w = 1/9*w;
w

Test = myfilter(T,w);
figure; imshow(Test,[]);