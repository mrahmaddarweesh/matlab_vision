img=imread('cameraman.tif');
figure
subplot(1,4,1)
imshow(img)
title('camreman image');
p=double(img(1:64,1:64));
V = std2(p)^2;
smoothed_img = imbilatfilt(img,4*V,2);
subplot(1,4,2)
imshow(smoothed_img);
title('smoothed image');
chips = imread("coloredChips.png");
subplot(1,4,3)
imshow(chips);
title('chips image');
disp(size(chips));
lab = rgb2lab(chips);
disp(size(lab));

prgb = imcrop(lab,[34,71,60,55]);
figure;
imshow(prgb)

patchSq = prgb.^2;
edist = sqrt(sum(patchSq,3));
patchVar = std2(edist).^2;

smoothedlab = imbilatfilt(lab,2*patchVar);
smoothedRBG = lab2rgb(smoothedlab,"Out","uint8");
subplot(1,4,3)
imshow(smoothedRBG);
title('smoothed image');
