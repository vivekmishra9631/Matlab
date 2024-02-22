
%trapezoidal rule:
format long
x=[0:0.00001:1];
i=1;
while(x(i)<1)
    i=i+1;
end
h=(-x(1)+x(i))/(3*i);
f0=f(x(1));
fn=f(x(i));
sum=0;
disp("computation of simpson 1/3: integral: ")
disp("")
disp("function given is:")
disp("f(x)=x^3-x+1")
j=2;
while j<i
    if rem(j,2)==0
         sum=sum+4*f(x(j));
    else
         sum=sum+2*f(x(j));
    end
    j=j+1;
end
s=(f0+fn+sum)*h;
disp("ANSWER for simpson 1/3: ")
disp(s)
e=(1- s/0.75)*100;
disp("error is:" )
disp(e)
disp("...........................................................")


function y=f(x)
y=x^3-x+1;
end
