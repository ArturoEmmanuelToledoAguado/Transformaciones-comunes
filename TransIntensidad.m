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