clear all;
close all;
img =imread('image_1.jpg');
img2=imread('image_2.png');

figure
subplot(2,2,1)
imshow(img);
title('image')
subplot(2,2,2)
imhist(img);
title('image histogram')
%**************************** Histogram Equalization **********************
equalized_img=histeq(img);
subplot(2,2,3);
imshow(equalized_img);
title('image after histogram equalization')
subplot(2,2,4);
imhist(equalized_img);
title('image histogram after histogram equalization')
%**************************** Histogram Matching **************************
matched_img=imhistmatch(img,img2);
figure;
subplot(2,2,1)
imshow(img);
title('image')
subplot(2,2,2)
imhist(img);
title('image histogram')
subplot(2,2,3);
imshow(matched_img);
title('image after histogram matching')
subplot(2,2,4);
imhist(matched_img);
title('image histogram after histogram matching')