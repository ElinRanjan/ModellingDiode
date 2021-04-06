function ans=MNA_CVD(matD,matR,matV)
node = max([max(matD(:,2:3)) max(matR(:,2:3)) max(matV(:,2:3))]);
ndiode = 0.7*ones(size(matD,1),1)
matV  = [matV;matD(:,1)+size(matV,1) matD(:,2:3) ndiode]
matV=sortrows(matV);
nV=size(matV,1);
G = Gmat(matR,node);
B = Bmat(node,matV);
C=B';
D=zeros(nV);
L=[G B;C D];
z=[zeros(node,1);matV(:,4)];
ans=inv(L)*z;

