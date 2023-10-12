function G=SpatialFilter(A,W);
%
[M,N]=size(A);
G=zeros(size(A));
[X,Y]=size(W);
K=(X-1)/2; L=(Y-1)/2;
W=W/sum(sum(W));
for x=K+1:M-K;
for y=L+1:N-L; 
        S=0;
        for a=-K:K;
        for b=-L:L;        
            S=S+W(a+K+1,b+L+1)*A(x+a,y+b);
        end;
        end;        
    G(x,y)=S;
end;
end;
%G=uint8(G);
end
