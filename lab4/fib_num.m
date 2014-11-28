function [r]=fib_num(nf)
    fibf(1) = 1;
    fibf(2) = 1;
    for n = 3:nf
        fibf(n) = fibf(n-1)+fibf(n-2);
    end
    r=fibf(nf);
end