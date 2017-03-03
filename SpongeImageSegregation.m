close all
%{ 
Immage Recognition Program for Sponge
By: Matheus C. Fernandes 
Harvard University

Description:
Using image correlation to obtain the volume fraction of diagonals to non
diagonals of an actual biological sponge. This code takes as an input the
image file name and obtains the volume fraction from a given image.
%}
Directory='Photos/2017-03-02_SpongesImageSegmentation/PostProcessing/';
FileName='PostProcessing.JPG';

%PostProcessing of Image
I=imread([Directory,FileName]);
I=imrotate(I,43);

I=imcrop(I,[1977.5 2414.5 241 189]);
I2=imgaussfilt(I,1);


I=im2bw(I2,0.35);
mask = (boundarymask(I));
cc = bwconncomp(mask, 4);
labeled = labelmatrix(cc);
RGB_label = label2rgb(labeled, @spring, 'c', 'shuffle');
imshow(RGB_label)
% s = regionprops(I,'centroid');
% centroids = cat(1, s.Centroid);

% 
% I2=imshow(I2);
% I2 = bwareaopen(I2, 50);
figure()
imshow(I2)
figure()
E=I; I=mask;

imshow(E, 'InitialMag', 'fit') 
imshow(I, 'InitialMag', 'fit') 

imshow(E, 'InitialMag', 'fit') 
% Make a truecolor image. 
color = cat(3, ones(size(E)), zeros(size(E)), zeros(size(E))); 
hold on 
h = imshow(color); 
hold off 
set(h, 'AlphaData', I)