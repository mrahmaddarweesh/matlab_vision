img=imread('pdf.jpg');
gray=rgb2gray(img);
level = graythresh(gray);
res=imbinarize(gray,level);
figure
subplot(2,1,1),imshow(img);
title('image');
subplot(2,1,2),imshow(res);
title('background thresholding');