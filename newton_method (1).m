format long
x0=5;
n=50;
tol=10^(-5);
for i=1:n
    x=x0-f(x0)/df(x0);
    if(abs(x-x0)<tol || f(x)==0)
        break
    else
        x0=x;
    end
end
x