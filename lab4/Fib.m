function [res,fval]=Fib(fun,a0,a_max,e)    

    delta1=a_max-a0;   
    n=ffib_num(delta1/e);
    ak=a0;
    a1=a0;
    bk=a_max;    
    
    alfa=fib_num(n-1)/fib_num(n);
    
    x1=bk-alfa*(bk-ak);
    x2=ak+alfa*(bk-ak);
    
    f1=fun(x1);
    f2=fun(x2);
    it=0;    
    for k=1:n-3        
        if (abs(f2-f1)<e)     
            break
        end
        it=k;
        if (f2>f1)
            bk=x2;            
            x2=x1;
            x1=bk-alfa*(bk-ak);
            f1=fun(x1);
            f2=fun(x2);
            else if (f2<=f1)
                    ak=x1;
                    x1=x2;
                    x2=ak+alfa*(bk-ak);
                    f2=fun(x2);
                    f1=fun(x1);
                end
        end
        alfa=fib_num(n-k-1)/fib_num(n-k);        
    end
    it
    alfa
    res=(x1+x2)/2;
    fval=fun(res);
end

function [r]=ffib_num(val)
    fibf(1) = 1;
    fibf(2) = 1;
    for n = 3:30
        fibf(n) = fibf(n-1)+fibf(n-2);
        if (fibf(n)>=val)
            r=n;
            break;
        end
    end    
end