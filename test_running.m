clc, clear all, close all
x(1,1)=0.5;
mu=3.8;
[Im M N L] = read_image ('LenaRGB.bmp');
[key] = keygeneration(L, M, N, x(1,1), mu);
[cipn] = enkripsi (Im, M, N, L, key);
[decipn] = dekripsi (cipn, M, N, L, key);

subplot(1,3,1),imshow(uint8(Im)), title('original Image')
subplot(1,3,2),imshow(uint8(cipn)), title('encrypted Image')
subplot(1,3,3),imshow(uint8(decipn)), title('decrypted Image')