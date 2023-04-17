% This is Lagrange interpolation
syms z;
Xs = input("Enter the values of X: ");
Ys = input("Enter the values of Y: ");
x = input("Enter the value of X you want to get its corresponding Y: ");
n = length(Ys);
L = sym(1 : n);

for i = 1 : n
    L(i) = 1;
    for j = 1 : n 
        if j ~= i
            L(i) = L(i) * ((z-Xs(j)) / (Xs(i) - Xs(j)));
        end
    end

end    

P = 0;

for i = 1 : n 
    P = P + L(i) * Ys(i);
end

% vpa() function is used to get the answer in decimal form
disp(vpa(subs(P, x)));
