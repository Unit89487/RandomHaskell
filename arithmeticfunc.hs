--these are comments in Haskell
--file: ch3 extra practice

add a b = a + b
multiply a b = a * b
addSevenNumbers a b c d e f g = a + b + c + d + e + f + g
addToList a = [a]
addToNumList a = a:[0, 1, 2, 3]
hadsTheorem a b c = (c^2 - b^2) - (b^2 - a^2)  --where a, b, c, and d are whole numbers in the natural succession. The difference
--of any n integer squared and the integer preceding it squared increases by two as n increases by one. i.e. the difference of
--3 squared and 2 squared is 5, and the difference of 4 squared and 3 squared is 5 + 2 = 7.
hadsTheoremCubic a b c = (c^3 - b^3) - (b^3 - a^3) --For the cubic case, does the difference in cubes increase by three? EDIT: nope,
--increases by six. 

quickString a = a ++ " has been quick stringed."

--a perfect number is a number whose divisors sum to the number. So you'd have to find the divisors. I'm not equipped yet, I don't think,
--to do that task. Of finding divisors. I'd have to add stuff to lists.. 
--I can add single elements to lists. How do I get a divisor? How do I find a divisor? The math part? Just divide by every number from 
--a/2 down to 2. Then what? Then... then... Add 'them' to a list. Them? How about trying to add one. 

