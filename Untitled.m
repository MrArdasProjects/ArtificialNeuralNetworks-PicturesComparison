
%Mehmet Arda Uçar
%Hazırladığım çalışma günümüzde.
      % 1)Uydu Fotoğraflarının Karşılaştırılmasında(Uzay Çalışmalarında)
      % 2)Kentselleşmenin değişiminde
      % 3)Akarsularda ve nehirlerde akan suyun değişimini görme konusunda
      % 4)Tıp ile ilgili konularda örneğin dokularda meydana gelen değişim
%Gibi çalışmalarda kullanılabilmektedir.

r1=imread('resim1.jpg'); %resim1 dosyasını okuma 
r1sb=rgb2gray(r1);       %%griskalaya çevirme

r2=imread('resim2.jpg');  %resim2 dosyasını okuma
r2sb=rgb2gray(r2);        %griskalaya çevirme

r1bin=im2bw(r1sb);   %resim içindeki değerleri mantık-logical degerlere (0 veya 1) çevirme 
r2bin=im2bw(r2sb);   %resim içindeki değerleri mantık-logical degerlere (0 veya 1) çevirme 

r1s=imresize(r1bin,[800,800]);   %resmilerin büyüklügünü 800x800 pixele çevirme
r2s=imresize(r2bin,[800,800]);   %resmilerin büyüklügünü 800x800 pixele çevirme

r1d=double(r1s);    %booloen olarak ifade edilen 0-1 degerleri YSA girisine verilebilmesi için
r2d=double(r2s);    %double türüne dönüstürülür.
                     
subplot(1,2,1)     
imshow(r1)
subplot(1,2,2)
imshow(r2)
imshowpair(r1,r2)
subplot(2,2,1)
imshow(r1)
subplot(2,2,2)
imshow(r2)
subplot(2,2,3)
imshowpair(r2,r1)
subplot(2,2,4)
imshowpair(r1,r2)

%imshowpair(r1,r2) farklı renk bantlarında gösterilen r1 ve r2 üste bindirilmiş 
%bileşik bir RGB görüntüsü oluşturur .


