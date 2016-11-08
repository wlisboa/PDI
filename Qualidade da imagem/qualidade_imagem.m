% Autor: Washington Pinto Lisboa


clear all;
close all;

X_orig = imread('leopard_orig.tif'); 
X1 = imread('leopard_1.tif');
X2 = imread('leopard_2.tif');

%figure;imshow(X1);
%figure;imshow(X2);

figure;imshow(X_orig);title('imagem original');

% processo 1: fus�o 'mean' e 'max'
XFUS_mean_max = wfusimg(X1,X2,'sym4',4,'mean','max'); 
XFUS_mean_max = mat2gray(XFUS_mean_max);
figure;imshow(XFUS_mean_max);title('fus�o mean max'); 
imwrite(XFUS_mean_max, 'leopard_fus1.tif');

% processo 2: fus�o 'min' e 'max'
XFUS_min_max = wfusimg(X1,X2,'sym4',4,'min','max'); 
XFUS_min_max = mat2gray(XFUS_min_max);
figure;imshow(XFUS_min_max);title('fus�o min max');
imwrite(XFUS_min_max, 'leopard_fus2.tif');

%Quest�o 1

% Calculo das compara��es para primeira imagem "fus�o mean max"
MSE_mean_max = immse(double(X_orig),double(XFUS_mean_max));
MSE_mean_max

SSIM_mean_max = ssim(X_orig,XFUS_mean_max);
SSIM_mean_max

PSNR_mean_max = psnr(X_orig,XFUS_mean_max);
PSNR_mean_max

% Calculo das compara��es para segunda imagem "fus�o min max"
MSE_min_max = immse(double(X_orig),double(XFUS_min_max));
MSE_min_max

SSIM_min_max = ssim(X_orig,XFUS_min_max);
SSIM_min_max

PSNR_min_max = psnr(X_orig,XFUS_min_max);
PSNR_min_max


%Quest�o 2
%VAR_mean_max = mean(var(XFUS_mean_max))
%VAR_min_max = mean(var(XFUS_min_max))


