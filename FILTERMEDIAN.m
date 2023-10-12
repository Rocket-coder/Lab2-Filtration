%FILTERMEDIAN;
%A8=imread('halftone2.png');
%A8=imread('Fig0506(a)(ckt_salt_pep_pt25).tif');
%A8=imread('Fig0413(a)(original_test_pattern).tif');
A8=imread('Face-345.png'); d=0.1; A8= AddNoise(A8,d,d);
A=double(A8);
%
%
W9=[[1,1,1];...
    [1,1,1];...
    [1,1,1]];
%
G9 =medianfilter(A,W9);
Show2ImagesBW(A8,G9,'Original','median filtered');
%
 


            