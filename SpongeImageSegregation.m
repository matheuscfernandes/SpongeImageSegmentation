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


I2=imbinarize(I);

I2=imshow(I2);
I2 = bwareaopen(I2, 50);
imshow(I2)
