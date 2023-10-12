function Z= AddNoise(A,salt,pepper)
% To generate a salt-pepper noise; 
% salt - is the rate of white pixels (0<salt<1)
% pepper is the rate of black pixels (0<pepper<1)
%
[M,N]=size(A);
Z=A;
v=max(max(A));
ShowImageBW(A,'Original'); pause
seed=rng;
%----------- Pepper ------------------------
NP=round(M*N*pepper); %Number of points
X=randi(M,[1,NP]); % Random Coordinates X
Y=randi(N,[1,NP]); % Random Coordinates Y
for p=1:NP;    
        Z(X(p),Y(p))=v;
end;
%----------- Salt ------------------------
NS=round(M*N*salt); 
X=randi(M,[1,NS]); % Random Coordinates X
Y=randi(N,[1,NS]); % Random Coordinates Y
for p=1:NS;    
        Z(X(p),Y(p))=0;
end;
NoiseData=['Noise: salt=',num2str(100*salt,4),'%'...
           '     pepper=',num2str(100*pepper,4),'%'];
ShowImageBW(Z,NoiseData); pause
end

