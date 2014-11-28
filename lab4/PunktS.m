function [ zval,fval ] = PunktS(Fun,amin,amax,d0,e)

    ak=amin;
    bk=amax;
    it=0;
%     dgval=diff(Fun,zk)
%     [fval,gval]=Fun(zk);
%     gval
    for k=1:44
        it=k;
        zk=(ak+bk)/2;
         gval=diff(Fun,zk);
%         [fval,gval]=Fun(zk);
%         gval=gval*d0';
        if (abs(gval)<e)
            break;
        end
        if (gval>0)           
            bk=zk;
        else
            ak=zk;
        end 
    end
    it
    zval=(ak+bk)/2;
    fval=Fun(zval);
end

function [d]=diff(f,z)
    eps=1e-6;
    d=(f(z+eps)-f(z))/eps;
end