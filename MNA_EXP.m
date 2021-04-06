function ans=MNA_EXP(matD,matR,matV,node);
%% diode parameters
Vt=26e-3;
Is=5e-17;
Id=0.1;
Vd=Vt*log(1 + Id/Is);
Geq=Is/Vt*exp(Vd/Vt);
Ieq=Id-Geq*Vd;
Vd_temp = 1;
nV=size(matV,1);

%% Initialising diode values
ndiode = size(matD, 1); 
Id(1 : ndiode)=0.1; 
Vd(1 : ndiode)=Vt*log(1 + Id/Is);
Geq(1 : ndiode)=Is/Vt*exp(Vd/Vt);
Ieq(1 : ndiode)=Id- Geq.*Vd;
Vd_temp(1 : ndiode) = 1; 
iter=1;

%% iterations
while(max(abs(Vd_temp-Vd))>1e-6)        
        
        G1 = Gmat(matR, node);
        matR2=[matD 1./Geq'];
        G2 = Gmat(matR2, node);
        G = G1+G2;
        B = Bmat(node,matV);
        C = B';
        D = zeros(nV);
        L = [G B;C D];
        I = [matD Ieq'];% diodes are treated as current sources 
        i = imat(I,node);
        z = [i;matV(:,4)];
        ans = inv(L)*z;
        v = ans(1 : node);
        curr = ans(node+1 : end);
        Vd_temp(1 : end) = Vd; % stores Vd from previous iteration 
        % calculating the diode node voltage
        for i = 1 : size(matD, 1)
            pos = matD(i, 2);
            neg = matD(i, 3);
            if neg == 0
                Vd(i) = ans(pos);
            elseif pos == 0
                Vd(i) = -ans(neg);
            else
                Vd(i) = ans(pos) - ans(neg);
            end
        end
        Id = Is*(exp(Vd/Vt) - 1);
        Geq = Is/Vt*exp(Vd/Vt);
        Ieq = Id - Geq.*Vd;
        iter = iter + 1;
end