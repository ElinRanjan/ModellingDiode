function ans=MNA_PWL(matD,matR,matV)
node = max([max(matD(:,2:3)) max(matR(:,2:3)) max(matV(:,2:3))]);
nV=size(matV,1);
matR=[matR;matD 20*ones(size(matD,1),1)];
G = Gmat(matR,node);
B = Bmat(node,matV);
C=B';
D=zeros(nV);
L=[G B;C D];
I=[matD -0.65/20*ones(size(matD,1),1)];
z=[imat(I,node);matV(:,4)];
ans=inv(L)*z;

