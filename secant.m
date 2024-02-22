format long
x1=4;
x2=5;
n=50;
tol=10^(-5);
for i=1:n
    x=x2 - ((x2-x1)/(f(x2)-f(x1)))*f(x2);
    if(abs(x-x2)<tol) || f(x)==0
        break
    else
        x1=x;
   
    end
end
x
   

