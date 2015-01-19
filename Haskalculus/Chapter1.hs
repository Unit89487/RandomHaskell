--composition of functions 

firstFunction y = y^2 + 1

secondFunction z = z^2 

thirdFunction = (firstFunction . secondFunction)

--The formula for the slope of the secant line, also known as the difference quotient. 


someFunction x = 3 * x^2 + 2
differenceQuotient g h = (someFunction(g + h) - someFunction(g)) / h

