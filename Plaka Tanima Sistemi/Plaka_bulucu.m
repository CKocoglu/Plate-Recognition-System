close all;
clear all;

resm = imread('Plaka Resimleri/plaka10.png');
griResim = rgb2gray(resm);
imbin = imbinarize(griResim);
resm = edge(griResim, 'prewitt');

%Plaka numarasini bulan kod blogu
alanresm=regionprops(resm,'BoundingBox','Area', 'Image');
alan = alanresm.Area;
count = numel(alanresm);
maxa= alan;
sinirliAlan = alanresm.BoundingBox;
for i=1:count
   if maxa<alanresm(i).Area
       maxa=alanresm(i).Area;
       sinirliAlan=alanresm(i).BoundingBox;
   end
end    

resm = imcrop(imbin, sinirliAlan);%Plaka icin alan kirpiyor.
resm = bwareaopen(~resm, 500); %500 den kucukse duzelt

 [h, w] = size(resm);%resmin boyutunu aliyo

imshow(resm);

alanresm=regionprops(resm,'BoundingBox','Area', 'Image'); %read harf
count = numel(alanresm);
plakaNumarasi=[]; % Plakadaki sayilarin listesini tutuyor.

for i=1:count
   ow = length(alanresm(i).Image(1,:)); %sutun uzunlugu
   oh = length(alanresm(i).Image(:,1)); %satir uzunlugu
   if ow<(h/2) && oh>(h/3)
       harf=Harf_bulucu(alanresm(i).Image); % Harfi okuyor
       plakaNumarasi=[plakaNumarasi harf] % Plakadaki her bir karakteri listeye ekliyor.
       %fprintf('\n%d. plakaNumarasi: %s \n\n',i-1,[plakaNumarasi harf])
       %plakaNumarasi=fprintf('Harf: %s',harf)
   end
end