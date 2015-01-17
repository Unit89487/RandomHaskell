--
--Came across an interesting function today.








--Does Haskell support composite functions?
--A: Yes, it does. The . operator is used to compose functions. As in, (reverse . sort)

square x = x^2 
double x = 2*x

doubleSquare = (double . square)

--This is just like the mathematical notation (f [unfilled dot] g)
--Sweet!


