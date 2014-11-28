x0=[1;-1];
[f,grad]=fun(x0);
d0=-grad;
a_max=alfa_max(@(a)fun(x0+a*d0),0,0.1);
[x,fval] = fminbnd(@(alfa)fun(x0+alfa*d0), 0, a_max)
%fplot(@(alfa)fun(x0+alfa*d0), [0 a_max]);

%Zadanie 2
[xfib,fvalfib]=Fib(@(alfa)fun(x0+alfa*d0), 0, a_max, 1e-4)