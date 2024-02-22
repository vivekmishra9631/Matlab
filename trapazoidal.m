%trapezoidal rule:
format long
x=[0:0.00001:1];
i=1;
while(x(i)<1)
    i=i+1;
end
h=(-x(1)+x(i))/(2*i);
f0=f(x(1));
fn=f(x(i));
sum=0;
disp(i)
disp("computation of trapezoidal integral: ")
disp("")
disp("function given is:")
disp("f(x)=x^3-x+1")
j=2;
while j<i
    sum=sum+f(x(j));
    j=j+1;
end
s=(f0+fn+(2*sum))*h;
disp("ANSWER for trapezodial: ")
disp(s)
e=s/0.75*100;
disp("error is:" )
disp(100-e)
disp("...........................................................")

function y=f(x)
y=x^3-x+1;
end
