format long
x0=2.5;
r=8.314;
p=10*1.013*(10^5);
t=523;
a=4.2384;
b=0.037556;
g=@(v)b+((r*t*v^2)/(p*v^2+a));
 
eps=(1.e-3);n=10;
for i=1:n
    x1=g(x0);
    if abs(x1-x0)<eps
        break
    else
        x0=x1;

    end
end
x1
