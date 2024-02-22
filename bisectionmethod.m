format long

a=0;b=5;eps=(1.e-3);n=log2((b-a)/eps);
if f(a)*f(b)>0
    fprintf("a and b are invalid")
end
for i=1:n
    x=(a+b)/2;
    if abs(b-a)<eps || f(x)==0
        break
    else
         
        if f(a)*f(x)>0

            b=x;
        else
            a=x;
        end
    end
end