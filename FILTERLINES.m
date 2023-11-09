%FILTERLINES;
% A8=imread('Fig1006(a)(building).tif');
%A8=imread('Fig0413(a)(original_test_pattern).tif');
% Name='My Rocket.jpg';
Name = 'Rocket_min_noise.jpg';
A8=imread(Name);
A=double(A8);
%
%-------- Mask ----------------------------------
% W=[[1,1,1,1,1,1,1];...
%    [1,1,1,1,1,1,1];...
%    [1,1,1,1,1,1,1]];
%
W=ones(7,7); 
%------------------------------------------------
G=SpatialFilter(A,W);
printvector('[max,min]=',[max(G(:)),min(G(:))])
G=normalize2(G);
G=uint8(round(255*G));
Show2ImagesBW(A8,G,'Original','line filtered'); pause;
%Show2Images(A8,255-G,'Original','Vertical Lines filtered');

 


            