--Introduction to functions in Haskell, courtesy of Real World Haskell ebook

add a b = a + b 
cube a = a ^ 3
squareRootOfNegativeUnity a b = a ++ "i"
achillesSpeech a = print (a ++ " Boomed Achilles, bravely.") 

-- dec 14, 2014

whatev a b = if tail a > 5 
			 then a ++ b 
			 else b ++ a 

listAdder a b = if a /= b 
				   then a ++ b
				   else b ++ a 
-- dec 15, 2014


-- dec 19, 2014

isItOdd number = mod number 2 == 1 

--In an argument that uses strict evaluation, the following would be the order of evaluation of the expression isItOdd (1 + 2): the
--subexpression (1 + 2) would be evaluated to give three. Then apply the isItOdd function with 'number' bound to three. Finally, 
--evaluate mod 3 2 to give 1, and 1 == 1 to give True. 

--The above is called 'strict evaluation.' In Haskell, things are a little different. Haskell uses 'non-strict', or 'lazy', evaluation.
--In Haskell, the (1 + 2) is not reduced the value 3. Instead, we create a 'promise' that when the value of the expression isItOdd(1 + 2)
--is needed, we'll be able to compute it. The record that we use to track an unevaluated expression is referred to as a 'thunk.'
--This is all that happens: we create a thunk, and defer the actual evaluation until it's really needed. If the result of of this expression
--is never needed, we will not compute it's value at all.

isItEven n = mod n 2 == 0

isItDivisibleByThree n = mod n 3 == 0

isItDivisibleByFour n = mod n 4 == 0 

isItDivisibleByFour(128 + 4);
--Now how would that function call be evaluated? Lazily. If it's value is needed. Apparently a promise is created. 
