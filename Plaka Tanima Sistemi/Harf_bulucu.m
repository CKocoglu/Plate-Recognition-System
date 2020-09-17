function harf=Harf_bulucu(snap)

load NewTemplates 
snap=imresize(snap,[42 24]); 
rec=[ ];

for n=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,n},snap); 
    rec=[rec cor]; 
end

ind=find(rec==max(rec));
%display(ind);
fprintf('indis: %d \n',ind);


% Alfabe listesi
if ind==1 || ind==2
    harf='A';
    fprintf('Harf: %s \n',harf);
elseif ind==3 || ind==4
    harf='B';
    fprintf('Harf: %s',harf);
elseif ind==5
    harf='C';
    fprintf('Harf: %s',harf);
elseif ind==6 || ind==7
    harf='D';
    fprintf('Harf: %s',harf);
elseif ind==8
    harf='E';
    fprintf('Harf: %s',harf);
elseif ind==9
    harf='F';
    fprintf('Harf: %s',harf);
elseif ind==10
    harf='G';
    fprintf('Harf: %s',harf);
elseif ind==11
    harf='H';
    fprintf('Harf: %s',harf);
elseif ind==12
    harf='I';
    fprintf('Harf: %s',harf);
elseif ind==13
    harf='J';
elseif ind==14
    harf='K';
elseif ind==15
    harf='L';
elseif ind==16
    harf='M';
    fprintf('Harf: %s',harf);
elseif ind==17
    harf='N';
    fprintf('Harf: %s',harf);
elseif ind==18 || ind==19
    harf='O';
    fprintf('Harf: %s',harf);
elseif ind==20 || ind==21
    harf='P';
    fprintf('Harf: %s',harf);
elseif ind==22 || ind==23
    harf='Q';
    fprintf('Harf: %s',harf);
elseif ind==24 || ind==25
    harf='R';
    fprintf('Harf: %s',harf);
elseif ind==26
    harf='S';
    fprintf('Harf: %s',harf);
elseif ind==27
    harf='T';
    fprintf('Harf: %s',harf);
elseif ind==28
    harf='U';
    fprintf('Harf: %s',harf);
elseif ind==29
    harf='V';
    fprintf('Harf: %s',harf);
elseif ind==30
    harf='W';
    fprintf('Harf: %s',harf);
elseif ind==31
    harf='X';
    fprintf('Harf: %s',harf);
elseif ind==32
    harf='Y';
    fprintf('Harf: %s',harf);
elseif ind==33
    harf='Z';
    fprintf('Harf: %s',harf);

% Numara listesi.
elseif ind==34
    harf='1';
    fprintf('Harf: %s',harf);
elseif ind==35
    harf='2';
    fprintf('Harf: %s',harf);
elseif ind==36
    harf='3';
    fprintf('Harf: %s',harf);
elseif ind==37 || ind==38
    harf='4';
    fprintf('Harf: %s',harf);
elseif ind==39
    harf='5';
    fprintf('Harf: %s',harf);
elseif ind==40 || ind==41 || ind==42
    harf='6';
    fprintf('Harf: %s',harf);
elseif ind==43
    harf='7';
    fprintf('Harf: %s',harf);
elseif ind==44 || ind==45
    harf='8';
    fprintf('Harf: %s',harf);
elseif ind==46 || ind==47 || ind==48
    harf='9';
    fprintf('Harf: %s',harf);
else
    harf='0';
    fprintf('Harf: %s',harf);
end
end