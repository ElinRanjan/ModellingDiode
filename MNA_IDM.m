function ans=MNA_IDM(matD,matR,matV)
node = max([max(matD(:,2:3)) max(matR(:,2:3)) max(matV(:,2:3))]);
n = size(matD);
ndiode = 1e-4*ones(n(1),1);
n1=size(matV);
matV  = [matV;matD(:,1)+n1(1) matD(:,2:3) ndiode];
matV=sortrows(matV);
nV=size(matV,1);
G = Gmat(matR,node);
B = Bmat(node,matV);
C=B';
D=zeros(nV);
L=[G B;C D];
z=[zeros(node,1);matV(:,4)];
ans=inv(L)*z;

