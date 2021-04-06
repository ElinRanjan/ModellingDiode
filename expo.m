function [strV,strI,strErrV,strErrI]=expo(matD,matR,matV,node);
ans=MNA_EXP(matD,matR,matV,node);
nV=size(matV,1);
Is=5e-17;
Vt=26e-3;
strV='';          
strI='';
strErrV='';
strErrI='';
tempI='';
for i=1:size(matD,1)
    if matD(i,3)==0
        Vd=ans(matD(i,2));
    elseif matD(i,2)==0
        Vd=-ans(matD(i,3));
    else
        Vd=ans(matD(i,2))-ans(matD(i,3));
    end
    if Vd>0
        tempV=sprintf('diode %d is forward biased and voltage is %d V\n',...
            matD(i,1),Vd);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d current is %d A\n',...
            matD(i,1),Is*(exp(Vd/Vt) - 1));
        strI=char({strI;tempI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),0);
        strErrV=char({strErrV;tempErrV});
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),0);
        strErrI=char({strErrI;tempErrI});
        

    else tempV=sprintf('diode %d is reverse biased and voltage is %d V\n',...
            matD(i,1),Vd);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d is reverse biased and current is %d A\n',...
            matD(i,1),-Is);
        strI=char({strI;tempI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),0);
        strErrV=char({strErrV;tempErrV});
      
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),0);
        strErrI=char({strErrI;tempErrI});
        
    end
end

ans

