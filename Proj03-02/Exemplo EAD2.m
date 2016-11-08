clear
clc

Imagem = imread('100.jpg');
Img = rgb2gray(Imagem);
[M N] = size(Img);


camada=4;
t=1;

for x=0:2^camada:256
    v(t)=x+1;
    t=t+1;
end

[M1 N1] = size(v);

for i=1:1:M
    for j=1:1:N
        for x=0:2:N1
            if (Img(i,j)>=v(1+x) && Img(i,j)<v(2+x))
                Img(i,j)=0;
            end
        end
    end
end
%23 45 67 89
for i=1:1:M
    for j=1:1:N
        for x=1:2:N1-1
            if (Img(i,j)>=v(1+x) && Img(i,j)<v(2+x))
                Img(i,j)=1;
            end
        end
    end
end

figure(1)
imshow(Imagem,[]);
figure(2)
imshow(Img,[]);