% This Bisection Method 

f = input("Enter the function: ");
a = input("Enter a: ");
b = input("Enter b: ");
error = input("Enter the error limit: ");

x1 = (a + b) / 2;

if f(x1) * f(a) > 0
    a = x1;
elseif f(x1) * f(b) > 0
    b = x1;
end
x2 = (a + b) / 2;

while abs((x2 - x1) / x2) * 100 > error
    x1 = x2;  
    if f(x1) * f(a) > 0
        a = x1;
    elseif f(x1) * f(b) > 0
        b = x1;
    end

    x2 = (a + b) / 2;
end

disp(x2);