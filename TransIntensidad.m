clc;
clear all;
close all;

%Abrir imagen
img=imread('IMG/1.jpg');

%Convertimos de uint8 a double
imgD=double(img);

%Funcion cuadrada
div=1/255;
FC=(imgD.^2).*div;

%Funcion cubica
FCub=(imgD.^3).*(div^2);

%Funcion raíz cuadrada
FSqrt=sqrt(255.*imgD);

%Funcion logaritmica
FLog=255.*((log(1+imgD))/(log(1+255)));

%Conversion de double a uint8
imgFC=uint8(FC);
imgFCub=uint8(FCub);
imgFSqrt=uint8(FSqrt);
imgFLog=uint8(FLog);

%Mostramos
figure()
subplot(2,3,1)
imshow(img)
title('Original')
subplot(2,3,2)
imshow(imgFC);
title('Función cuadrada')
subplot(2,3,3)
imshow(imgFCub)
title('Funcion cubica')
subplot(2,3,4)
imshow(imgFSqrt)
title('Funcion raiz cuadrada')
subplot(2,3,5)
imshow(imgFLog)
title('Funcion logaritmica')