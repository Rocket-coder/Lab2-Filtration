function G=medianfilter(A,W);
%
[M,N]=size(A);
G=zeros(M,N);
for x=2:M-1;
    for y=2:N-1; 
        G(x,y)=median(...
            [W(1,1)*A(x-1,y-1), W(1,2)*A(x-1,y), W(1,3)*A(x-1,y+1),... 
             W(2,1)*A(x,  y-1), W(2,2)*A(x,  y), W(2,3)*A(x,  y+1),... 
             W(3,1)*A(x+1,y-1), W(3,2)*A(x+1,y), W(3,3)*A(x+1,y+1)]); 
    end;
end;
G=uint8(G);
end
