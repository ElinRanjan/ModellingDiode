function [strV,strI,strErrV,strErrI]=pwl(matD,matR,matV,node);
matV1=matV;
matD1=matD;
matR1=matR;
ans=MNA_PWL(matD,matR,matV)
anstrue=MNA_EXP(matD,matR,matV,node);
matRev=matD;
strV='';
strI='';
strErrV='';
strErrI='';
tempI='';
for i=1:size(matD)
    if matD(i,3)==0
        dV=ans(matD(i,2));
    elseif matD(i,2)==0
        dV=-ans(matD(i,3));
    else
        dV=ans(matD(i,2))-ans(matD(i,3));
    end
    if (-0.65/20+dV/20)>0
        matRev(i,:)=0;
    else matD(i,:)=0;
    end

end
matD(all(~matD,2),:)=[];
matRev(all(~matRev,2),:)=[];
if isempty(matRev)
    for i=1:size(matD,1)
        if matD(i,3)==0
           dV=ans(matD(i,2));
           dV1=anstrue(matD(i,2));
        elseif matD(i,2)==0
            dV=-ans(matD(i,3));
            dV1=-anstrue(matD(i,3));
        else
            dV=ans(matD(i,2))-ans(matD(i,3));
            dV1=anstrue(matD(i,2))-anstrue(matD(i,3));
        end
        tempV=sprintf('diode %d is forward biased and voltage is %d V\n',...
            matD(i,1),dV);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d is forward biased and current is %d A\n',...
            matD(i,1),-0.65/20+dV/20);
        strI=char({strI;tempI});
        Id=5e-17*(exp(dV1/26e-3)-1);
        dI=-0.65/20+dV/20;
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),abs(Id-dI)*100/abs(Id));
        strErrI=char({strErrI;tempErrI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),abs(dV-dV1)*100/abs(dV1));
        strErrV=char({strErrV;tempErrV});
    end
else matRev=[matRev 1e15*ones(size(matRev,1),1)];
    matR=[matR; matRev];
    ansnew=MNA_PWL(matD,matR,matV1)
    for i=1:size(matRev,1)
       if matRev(i,3)==0
            dV=ansnew(matRev(i,2));
            dV1=anstrue(matRev(i,2));
        elseif matRev(i,2)==0
            dV=-ansnew(matRev(i,3));
            dV1=-anstrue(matRev(i,3));
        else
            dV=ansnew(matRev(i,2))-ansnew(matRev(i,3));
            dV1=anstrue(matRev(i,2))-anstrue(matRev(i,3));
        end
        tempV=sprintf('diode %d is reverse biased and voltage is %d V\n',...
            matRev(i,1),dV);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d is reverse biased and current is %d A\n',...
            matRev(i,1),dV/1e16);
        strI=char({strI;tempI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matRev(i,1),abs(dV-dV1)*100/abs(dV1));
        strErrV=char({strErrV;tempErrV});
        
       
        dI=dV/1e16;
        Id=5e-17*(exp(dV1/26e-3)-1);
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matRev(i,1),abs(Id-dI)*100/abs(Id));
        strErrI=char({strErrI;tempErrI});
        
        
    end
    for i=1:size(matD,1)
        if matD(i,3)==0
            dV=ansnew(matD(i,2));
            dV1=anstrue(matD(i,2));
        elseif matD(i,2)==0
            dV=-ansnew(matD(i,3));
            dV1=-anstrue(matD(i,3));
        else
            dV=ansnew(matD(i,2))-ansnew(matD(i,3));
            dV1=anstrue(matD(i,2))-anstrue(matD(i,3));
        end
        tempV=sprintf('diode %d is forward biased and voltage is %d V\n',...
            matD(i,1),dV);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d is forward biased and current is %d A\n',...
            matD(i,1),-0.65/20+dV/20);
        strI=char({strI;tempI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),abs(dV-dV1)*100/abs(dV1));
        strErrV=char({strErrV;tempErrV});
        dI=(dV-0.65)/20;
        
        Id=5e-17*(exp(dV1/26e-3)-1);
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),abs(Id-dI)*100/abs(Id));
        strErrI=char({strErrI;tempErrI});
       
        
    end
end
