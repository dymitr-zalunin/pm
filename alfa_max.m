function [a_max]=alfa_max(Fun,a,d)
%-------------------------------------------------------
%function b=alfa_max(Fun,a,d)
% Fun   - funkcja
% a     - lewy koniec przedzia?u (0)
% d - przyrost (1)
%-------------------------------------------------------
a1=a;
%punkt próbny
ap=a+d;

f1=feval(Fun,a1);
fp=feval(Fun,ap);

if (f1<=fp)    
    a3=ap;
    a2=(a1+a3)/2;    
    while (warunek3P(Fun,a1,a2,a3)~=1)
        a2=(a1+a2)/2;
    end
else
    a2=ap;
    a3=a2+d;
    while (warunek3P(Fun,a1,a2,a3)~=1)
        d=2*d;
        a3=a3+d;
    end
end

a_max=a3;

function [cond]=warunek3P(f,a1,a2,a3)
cond= (a1<a2 && a2<a3 && f(a1)>f(a2) && f(a2)<f(a3));