function G = Gmat(matR,node)
G=zeros(node);
for i=1:size(matR,1)
    if ~ismember(0,matR(i,2:3))
        node1 = matR(i,2);
        node2 = matR(i,3);
        G(node1,node1) = G(node1,node1)+1/matR(i,4);
        G(node2,node2) = G(node2,node2)+1/matR(i,4);
        G(node1,node2) = G(node1,node2)-1/matR(i,4);
        G(node2,node1) = G(node2,node1)-1/matR(i,4);
    else
        node1 = matR(i,2);
        node2 = matR(i,3);
        if matR(i,2) == 0
            G(node2,node2) = G(node2,node2) + 1/matR(i,4);
        elseif matR(i,3) == 0
            G(node1,node1) = G(node1,node1) + 1/matR(i,4);
        end
    end
end