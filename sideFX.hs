b = 11
a = 10 + b


sideFX a b = if a + b > 25
			 then a 
			 else b

--This function would have side effects if it were possible for some other code to change the value of b or a. Then the results of any given implementatino of sideFX
--would be dependent on the current state of some variable, a, b, or both. 



pythagoreanHypotenuse a b = sqrt(a^2 + b^2)

pOverQ p q = p / q


--more practice with myDrop

mySecondDrop n xs = if n <= 0 || null xs
					then xs 
					else mySecondDrop (n - 1) (tail xs) 


--second drop takes two arguments and returns a ... list. It returns xs. It returns the same list if n <= 0 or if the list originally passed list 
--

	func = 