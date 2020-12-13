clc;
clear all;
close all;

%==========================  Laplacian  Filter  ==========================%

resim=input('Please enter number for desired object image\n 1:Duck\n 2:Tennis Ball\n 3:Candy Box\n 4:Cameraman\n 5:Butterfly\n 6:Planes\n');
img = imread(sprintf('%d.png',resim));
[row,col,channel]=size(img);

if channel==3
    img=double(rgb2gray(img));
else
    img=double(img);
end

figure (1)
imshow(uint8(img)), title('Original Image')
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);

% Implementation into image. We are awaiting with sharpening
Laplacian_Filtered_Image = laplacianFilter(img);

figure (2)
title('Laplacian Filtering')
subplot(1,2,1), imshow(uint8(img)), title('Original Image')
subplot(1,2,2), imshow(uint8(Laplacian_Filtered_Image)), title('Filtered Image')
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);