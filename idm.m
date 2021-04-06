function [strV,strI,strErrV,strErrI]=idm(matD,matR,matV,node)
matV1=matV;
matD1=matD;
matR1=matR;
ans=MNA_IDM(matD,matR,matV)
anstrue=MNA_EXP(matD,matR,matV,node);
matRev=matD;
matRev=sortrows(matRev);
matD=sortrows(matD);
strV='';
strI='';
strErrV='';
strErrI='';
tempI='';
for i=1:size(matD)
    if ans(node+size(matV,1)+i)>0
        matRev(i,:)=0;
    else matD(i,:)=0;
    end
end
matD(all(~matD,2),:)=[];
matRev(all(~matRev,2),:)=[];
if isempty(matRev)
    for i=1:size(matD,1)
        
        tempV=sprintf('diode %d is forward and it is short circuited\n',...
            matD(i,1));
        strV=char({strV;tempV});
        tempI=sprintf('diode %d current is %d A\n',...
            matD(i,1),ans(node+size(matV,1)+i));
        strI=char({strI;tempI});
         
        if matD(i,3)==0
            
            dV1=anstrue(matD(i,2));
        elseif matD(i,2)==0
            
            dV1=-anstrue(matD(i,3));
        else
            
            dV1=anstrue(matD(i,2))-anstrue(matD(i,3));
        end
        
        dI=ans(node+size(matV,1)+i);
        Id=5e-17*(exp(dV1/26e-3)-1);
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),abs(Id-dI)*100/abs(Id));
        strErrI=char({strErrI;tempErrI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),100);
        strErrV=char({strErrV;tempErrV});
        
    end
else matRev=[matRev 1e15*ones(size(matRev,1),1)];
    matR=[matR; matRev];
    ansnew=MNA_IDM(matD,matR,matV1)
    for i=1:size(matRev,1)
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
        
        
        tempV=sprintf('diode %d is reverse and voltage is %d V\n',...
            matRev(i,1),dV);
        strV=char({strV;tempV});
        tempI=sprintf('diode %d is reverse and it is open circuited \n',...
            matRev(i,1));
        strI=char({strI;tempI});
        
          
        Id=5e-17*(exp(dV1/26e-3)-1)
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matRev(i,1),100);
        strErrI=char({strErrI;tempErrI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matRev(i,1),abs(dV-dV1)*100/abs(dV1));
        strErrV=char({strErrV;tempErrV});
        
        
    end
    for i=1:size(matD,1)
        
        tempV=sprintf('diode %d is forward and it is short circuited\n',...
            matD(i,1));
        strV=char({strV;tempV});
        tempI=sprintf('diode %d current is %d A\n',...
            matD(i,1),ansnew(node+size(matV,1)+i));
        strI=char({strI;tempI});
        
        if matD(i,3)==0
            
            dV1=anstrue(matD(i,2));
        elseif matD(i,2)==0
            
            dV1=-anstrue(matD(i,3));
        else
            
            dV1=anstrue(matD(i,2))-anstrue(matD(i,3));
        end
        
        dI=ansnew(node+size(matV,1)+i);
        Id=5e-17*(exp(dV1/26e-3)-1);
        tempErrI=sprintf('Error in diode %d current is %d percent\n',...
            matD(i,1),abs(Id-dI)*100/abs(Id));
        strErrI=char({strErrI;tempErrI});
        
        tempErrV=sprintf('Error in diode %d voltage is %d percent\n',...
            matD(i,1),100);
        strErrV=char({strErrV;tempErrV});
        
        
     
    end
end