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
I=imcrop(I,[1642.5 1002.5 356 364]);

imshow(I)