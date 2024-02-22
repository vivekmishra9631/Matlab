%trapezoidal rule:
format long
x=[0:0.00002:1];
i=1;
while(x(i)<1)
    i=i+1;
end
h=3*(-x(1)+x(i))/(8*i);
f0=f(x(1));
fn=f(x(i));
sum=0;
disp("computation of simpson 3/8: integral: ")
disp("")
disp("function given is:")
disp("f(x)=x^3-x+1")
j=2;
if rem(i,3)==0
while j<i
    if rem((j-1),3)==0
         sum=sum+2*f(x(j));
    else
         sum=sum+3*f(x(j));
    end
    j=j+1;
end
s=(f0+fn+sum)*h;
disp("ANSWER for simpson 3/8: ")
disp(s)
e=s/0.75 *100;
disp("error is:" )
disp(100-e)
disp("...........................................................")

else
    disp("enter a range as multiple of 3")
end

function y=f(x)
y=x^3-x+1;
end
