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

blah a b = if tail [1 .. 10] >= tail [1 .. 8]
		   then print "I really need to think of some more interesting functions."
		   else print "Does it matter?"

tada a b = if tail (a ++ b) < 10
		   then 35:a 
		   else 35:b

cha ching a b = 