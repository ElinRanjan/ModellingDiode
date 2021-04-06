function B = Bmat(node,matV)
nV=size(matV,1);
B=ones(node,nV);
for i=1:node
    for j=1:nV
        if matV(j,2)==i
            B(i,j)=1;
        elseif matV(j,3)==i
            B(i,j)=-1;
        else B(i,j)=0;
        end
    end
end