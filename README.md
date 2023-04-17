# Numerical-Techniques
Codes of my Numerical Techniques module at University - also learning MATLAB


## NOTES :-
> **Warning**
>
> there is difference between % and %% 
> One percent sign ( % ) is used for commenting lines. Two percent signs ( %% ) have a different purpose: they are used for dividing your code into sections, which can be run independently. This allows easier debugging.

> **Note**
>
> ***Some Important Functions to understand :-***
>
> - `vpa()` is a function to get the answers in decimal form
> - `subs(s,new)` returns a copy of `s`, replacing all occurrences of the default symbolic scalar variable in `s` with `new`, and then evaluates s.
> ```matlab
> % for exmaple
> syms X;
> equation = (3 + X);
> ans = subs(equation,5);
> % ans will be equal 8
> ```
> - `syms` The syms function creates a variable dynamically. For example, `syms x` creates the symbolic variable `x` and automatically assigns it to a MATLAB variable with the same name.
>   - You can then use the variable `x` in the MATLAB workspace for symbolic workflow, such as finding the roots of a polynomial.
>   - ![Example](images/solveExample.jpg)
