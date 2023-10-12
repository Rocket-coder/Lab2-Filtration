%FILTERLOW;
%A8=imread('halftone2.png');
%A8=imread('Fig0506(a)(ckt_salt_pep_pt25).tif');
%A8=imread('Fig0413(a)(original_test_pattern).tif');
Name='My Rocket.jpg';
C8=imread(Name); C8= AddNoise(C8,0.01,0.01);
C=double(C8);
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
G5 =convolution2(C,W5);
G5N = normalize2(G5);
Show2ImagesBW(C8,G5N,'Original','W5-filtered'); pause
G9 =convolution2(C,W9);
G9N = normalize(G9);
Show2ImagesBW(C8,G9N,'Original','W9-filtered'); pause
G16=convolution2(C,W16);
G16N = normalize(G16);
Show2ImagesBW(C8,G16N,'Original','W16-filtered'); pause
G44=uint8(SpatialFilter(C,W44));
Show2ImagesBW(C8,G44,'Original','W44-filtered'); %pause
%
 Show2ImagesBW(G5N,G9N, 'W5-filtered','W9-filtered');  pause
 Show2ImagesBW(G5N,G16N,'W5-filtered','W16-filtered'); pause
 Show2ImagesBW(G9N,G16N,'G9-filtered','W16-filtered'); 

            