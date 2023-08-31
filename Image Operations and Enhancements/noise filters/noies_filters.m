close all;
clear all;
img=imread('pepper.png');
gray=rgb2gray(img);
img_with_noise=imnoise(gray,'salt & pepper');

h = fspecial('average',3);
mean_filter = imfilter(img_with_noise, h,'conv');

median_filter = medfilt2(img_with_noise);


    gaussian1 = imgaussfilt(img_with_noise,0.2);
    gaussian2 = imgaussfilt(img_with_noise,0.3);
    gaussian3 = imgaussfilt(img_with_noise,0.6);
    gaussian4 = imgaussfilt(img_with_noise,0.8);
    gaussian5 = imgaussfilt(img_with_noise,1);

figure
subplot(1,3,1)
imshow(img_with_noise)
title('image with noise')
subplot(1,3,2)
imshow(mean_filter)
title('After appying mean filter')
subplot(1,3,3)
imshow(median_filter)
title('After applying median filter')
figure
subplot(2,3,1)
imshow(gaussian1)
title('Gaussian with sigma 0.2')
subplot(2,3,2)
imshow(gaussian2)
title('Gaussian with sigma 0.3')
subplot(2,3,3)
imshow(gaussian3)
title('Gaussian with sigma 0.6')
subplot(2,3,4)
imshow(gaussian4)
title('Gaussian with sigma 0.8')
subplot(2,3,5)
imshow(gaussian5)
title('Gaussian with sigma 0.1')
%conclusion 
% median filter is the best filter for salt and pepper noise

