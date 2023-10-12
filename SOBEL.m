%SOBEL;
Name='My Rocket.jpg';
%A8=imread('Fig0316(a)(moon).tif');
%A8=imread('Fig0413(a)(original_test_pattern).tif');
A8=imread(Name);
%A8=imread('Fig0306(a)(bone-scan-GE).tif');
%A8=imread('Fig1006(a)(building).tif');
A=double(A8);
%
SY=[[-1,-2,-1];...
    [ 0, 0, 0];...
    [ 1, 2, 1]];
%
SX= [[-1, 0, 1];...
     [-2, 0, 2];...
     [-1, 0, 1]];
 
SY2= [[-3, -10,-3];...
      [ 0,   0, 0];...
      [ 3,  10, 3]];
SX2= SY'; 
%
S =abs(convolution2(A,SX))+abs(convolution2(A,SY));
SN=normalize(S);
Show2ImagesBW(A8,SN,'Original','Sobel mask'); pause
AS1=normalize(A+0.7*S);
Show2ImagesBW(A8,AS1,'Original','Sobel1 filtered'); pause
%
S =abs(convolution2(A,SX2))+abs(convolution2(A,SY2));
SN=normalize(S);
Show2ImagesBW(A8,SN,'Original','Sobel mask2'); pause
AS2=normalize(A+0.2*S);
Show2ImagesBW(A8,AS2,'Original','Sobel2 filtered'); pause
%
Show2ImagesBW(AS1, AS2,'Sobel1 filtered','Sobel2 filtered'); 






            