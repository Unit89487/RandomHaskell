--Constructing my own take functon. Take takes two arguments. One num and one list. The return type is a list, composed of the first 'num'
--elements of the list passed as an argument. What can I do to get a list made of the first 'num' elements of, say [1, 2, 3] and I want
--[1]. I can... I was going to say drop some elements of the list, but that won't work, will it? It won't get me to where I need to go.
--It won't get me to the first two elements. I need... head. Head on the list and then put that char in a list. 
--So I'm returning a list with the first element of the original list now. The original list is.. not necessarily down an element. It's
--not, in fact. It's not. Just confirmed in the Haskell interpreter. I've got the first element. My hope was that I could then get the 
--first element of the contracted list, and addt that element to the list I had created for the first element stolen away from the 
--original list. That doesn't look like it's going to work. My take on the matter? (Recursion) This one was a good effort, but nothing doing. 



myTake num list = if null list || num <= 0
				  then list
				  else (head list):[] 

--Trying to make a function that takes a fraction and attempts to see if it is in lowest terms. If it is in lowest terms, one of the
--numbers must be odd. Although that does not necessarily mean it is in lowest terms. For example 9/3. In that case the numbers p/q will
--need to have their divisibility assessed somehow. First if p is visible by q. And if it is, then to re-create a frac. 


--how to test if a number is divisible by another number without modula? Don't know. How about finish the Haskell e-book and see 
--where to go from there. 

--lowestTerms numerator denominator = 