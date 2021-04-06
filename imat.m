function i = imat(I, node)
i = zeros(node,1);
for k = 1 : node
    for j = 1 : size(I, 1)
        if I(j, 2) == k
            i(k) = i(k) - I(j, 4);
        elseif I(j, 3) == k
            i(k) = i(k) + I(j, 4);
        end
    end
end

