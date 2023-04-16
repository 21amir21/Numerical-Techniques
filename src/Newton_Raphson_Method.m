% This is Newton-Raphson method 

f = input("Enter the Function: "); 
Dfunc = input("Enter the Dervative of function: ");
Xnew = input("Root Approximate: ");
Error = input("Error: ");

Xold = Xnew;
Xnew = Xold - (f(Xold) / Dfunc(Xold));

while abs((Xnew - Xold) / Xnew) > Error
    Xold = Xnew;
    Xnew = Xold - (f(Xold) / Dfunc(Xold));
end

disp(Xnew);