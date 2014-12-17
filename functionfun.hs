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


