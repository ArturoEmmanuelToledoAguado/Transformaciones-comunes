clc;
clear all;
close all;

%Abrir imagen
imgc=imread('IMG/cua.jpg');
imgcub=imread('IMG/cub.jpg');
imglog=imread('IMG/log.jpg');
imgsqr=imread('IMG/sqr.jpg');

%Convertimos de uint8 a double
imgDc=double(imgc);
imgDcub=double(imgcub);
imgDlog=double(imglog);
imgDsqr=double(imgsqr);

%Funcion cuadrada
div=1/255;
FC=(imgDc.^2).*div;

%Funcion cubica
FCub=(imgDcub.^3).*(div^2);

%Funcion raíz cuadrada
FSqrt=sqrt(255.*imgDsqr);

%Funcion logaritmica
FLog=255.*((log(1+imgDlog))/(log(1+255)));

%Conversion de double a uint8
imgFC=uint8(FC);
imgFCub=uint8(FCub);
imgFSqrt=uint8(FSqrt);
imgFLog=uint8(FLog);

%Mostramos
figure()
subplot(1,2,1)
imshow(imgc)
title('Original')
subplot(1,2,2)
imshow(imgFC);
title('Función cuadrada')
figure()
subplot(1,2,1)
imshow(imgcub)
title('Original')
subplot(1,2,2)
imshow(imgFCub)
title('Funcion cubica')
figure()
subplot(1,2,1)
imshow(imgsqr)
title('Original')
subplot(1,2,2)
imshow(imgFSqrt)
title('Funcion raiz cuadrada')
figure()
subplot(1,2,1)
imshow(imglog)
title('Original')
subplot(1,2,2)
imshow(imgFLog)
title('Funcion logaritmica')