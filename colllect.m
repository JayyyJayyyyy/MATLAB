x=0:23;
sicaklik=[9.2 9.6 9 7.7 6.8 6 5.9 4.3 7.2 8.9 9.2 10.2 10.9 10.6 10.6 10.7 10.3 8.6 8.2 8 8.8 7.1 7.5 7.5];
%tek rakamlı saatler ve sıcaklıklar vektörleri       
xtek=1:2:23;
sicaklik_tek=[9.6 7.7 6 4.3 8.9 10.2 10.6 10.7 8.6 8 7.1 7.5];

xcift=0:2:22;%cift rakamlı saatler ve sıcaklıklar vektörleri
sicaklik_cift=[9.2 9 6.8 5.9 7.2 9.2 10.9 10.6 10.3 8.2 8.8 7.5];

ikincidereceden=polyfit(xcift,sicaklik_cift,2);
fprintf('Denklemin katsayıları=%.2f\n',ikincidereceden)

%tek rakamlıları hesapla
tahmin_tek=polyval(ikincidereceden,xtek );

%ort kare hesapla
okh_tek=mean((tahmin_tek-sicaklik_tek).^2);

%çizdirme
plot(x,sicaklik,'bo',xcift,sicaklik_cift,'r*',xtek,sicaklik_tek,'r+',xtek,tahmin_tek,'g-');
xlabel('sıcaklık');
ylabel('saat');
title('Saatlere Göre Sıcaklık Grafiği');
legend('Ölçülen Sıcaklıklar','Çift Saatli Sıcaklıklar','Tek Saatli Sıcaklıklar','Tahmini');

%sembol işlem
clear,clc
syms x y
f(x)=sin(y)+cos(x)^3-7*x*y^2
semboldeger=subs(f,[x,y],[2,pi/2])

%integral
syms  a
int(f,1,a)

%diff
diff(f,y,2)

%grafik
ezsurf(f,[-1 1 pi 2*pi])

%denkleme göre çöz
[x y]=solve(f==cos(x)^2+2*pi)
