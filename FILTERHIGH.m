%FILTERHIGH;
Name='My Rocket.jpg';
% Name = 'Rocket_med_filtered.jpg';
A8=imread(Name);
%A8=imread('Fig0203(a)(chest-xray).tif');
%A8=imread('Fig1006(a)(building).tif');
%A8=imread('Fig0306(a)(bone-scan-GE).tif');
%A8=imread('town1.jpg');
%A8=imread('garden1.jpg');
%ShowImageRGB(imread('garden-RGB.jpg'),'garden1.jpg');pause
%--------------------------------------------------------------------
A=double(A8);
%
L5=[[0, 1,0];...
    [1,-8,1];...
    [0, 1,0]];
%
L9=[[1, 1, 1];...
    [1,-16, 1];...
    [1, 1, 1]];
%
G5 =convolution2(A,L5);
G5N=normalize(G5);
Show2ImagesBW(A8,G5N,'Original','5-Laplacian'); pause
AF5=normalize(abs(A-G5));
Show2ImagesBW(A8,AF5,'Original','L5-filtered'); pause
imwrite(G5N,'Rocket_5-lap.jpg');
imwrite(AF5,'Rocket_5-lap_filtered.jpg');
G9 =convolution2(A,L9);
G9N=normalize(G9);
Show2ImagesBW(A8,G9N,'Original','9-Laplacian'); pause
AF9=normalize(abs(A-G9));
Show2ImagesBW(A8,AF9,'Original','L9-filtered'); pause
imwrite(G9N,'Rocket_9-lap.jpg');
imwrite(AF9,'Rocket_9-lap_filtered.jpg');
Show2ImagesBW(AF5,AF9, 'L5-filtered','L9-filtered');  %pause


            