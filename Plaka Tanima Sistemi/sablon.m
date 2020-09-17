
%Alfabe
A=imread('alpha/A.bmp');B=imread('alpha/B.bmp');C=imread('alpha/C.bmp');
D=imread('alpha/D.bmp');E=imread('alpha/E.bmp');F=imread('alpha/F.bmp');
G=imread('alpha/G.bmp');H=imread('alpha/H.bmp');I=imread('alpha/I.bmp');
J=imread('alpha/J.bmp');K=imread('alpha/K.bmp');L=imread('alpha/L.bmp');
M=imread('alpha/M.bmp');N=imread('alpha/N.bmp');O=imread('alpha/O.bmp');
P=imread('alpha/P.bmp');Q=imread('alpha/Q.bmp');R=imread('alpha/R.bmp');
S=imread('alpha/S.bmp');T=imread('alpha/T.bmp');U=imread('alpha/U.bmp');
V=imread('alpha/V.bmp');W=imread('alpha/W.bmp');X=imread('alpha/X.bmp');
Y=imread('alpha/Y.bmp');Z=imread('alpha/Z.bmp');

%Sayilar
bir=imread('alpha/1.bmp');iki=imread('alpha/2.bmp');
uc=imread('alpha/3.bmp');dort=imread('alpha/4.bmp');
bes=imread('alpha/5.bmp'); alti=imread('alpha/6.bmp');
yedi=imread('alpha/7.bmp');sekiz=imread('alpha/8.bmp');
dokuz=imread('alpha/9.bmp'); sifir=imread('alpha/0.bmp');

%Alfabe icin liste olusturuyoruz.
harf=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];

%Sayilar icin liste olusturuyoruz.
sayi=[bir iki uc dort bes alti yedi sekiz dokuz sifir];

YeniSablon=[harf sayi];
save ('YeniSablon','YeniSablon')
clear all