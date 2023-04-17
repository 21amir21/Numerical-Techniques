% Least Square Quadratic Model

Xs = input("Enter the x points in vector form: ");
Ys = input("Enter the y points in vector form: ");
n = length(Xs);
syms x;

A_Quad = [ n sum(Xs) sum(Xs.^2); 
           sum(Xs) sum(Xs.^2) sum(Xs.^3);
           sum(Xs.^2) sum(Xs.^3) sum(Xs.^4) ];

B_Quad = [ sum(Ys);
           sum(Xs.*Ys);
           sum((Xs.^2).*Ys) ];

result_MATRIX = linsolve(A_Quad,B_Quad);

a0 = vpa(result_MATRIX(1));
a1 = vpa(result_MATRIX(2));
a2 = vpa(result_MATRIX(3));

y = vpa(a0 + (a1*x) + (a2*x^2), n);

disp(y);