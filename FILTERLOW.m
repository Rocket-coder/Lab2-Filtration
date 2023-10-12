%FILTERLOW;
%A8=imread('halftone2.png');
%A8=imread('Fig0506(a)(ckt_salt_pep_pt25).tif');
%A8=imread('Fig0413(a)(original_test_pattern).tif');
A8=imread('Face-345.png'); A8= AddNoise(A8,0.01,0.01);
A=double(A8);
%
W5=[[0,1,0];...
    [1,1,1];...
    [0,1,0]];
%
W9=[[1,1,1];...
    [1,1,1];...
    [1,1,1]];

W16=[[1,2,1];...
     [2,4,2];...
     [1,2,1]];
%
W44=[[1,1,2,1,1];...
     [1,2,3,2,1];...
     [2,3,4,3,2];...
     [1,2,3,2,1];...
     [1,1,2,1,1]];
%
G5 =convolution(A,W5);
Show2ImagesBW(A8,G5,'Original','W5-filtered'); pause
G9 =convolution(A,W9);
Show2ImagesBW(A8,G9,'Original','W9-filtered'); pause
G16=convolution(A,W16);
Show2ImagesBW(A8,G16,'Original','W16-filtered'); pause
G44=uint8(SpatialFilter(A,W44));
Show2ImagesBW(A8,G44,'Original','W44-filtered'); %pause
%
% Show2ImagesBW(G5,G9, 'W5-filtered','W9-filtered');  pause
% Show2ImagesBW(G5,G16,'W5-filtered','W16-filtered'); pause
% Show2ImagesBW(G9,G16,'G9-filtered','W16-filtered'); 

            