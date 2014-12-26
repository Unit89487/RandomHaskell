--What Haskell file is this supposed to be? 
--Just some recursion practice. 

--What are some good recursive algorithms I can make?


--exponential recursion 

potentiate a b = a ^ b 

--well that really benefitted from the built-in exponentiation capability... 

factorial a = if a >= 1
			  then a * factorial (a - 1)
			  else a 




--Why is factorial returning zero? Let's play computer. 
--Step 1: a is bound to the value 9. the expression [ if 9 >= 1 ] is evaluated and returns True. 
--Since the predicate has returned True, the 'then' branch is evaluated. 
--That evaluation is 9 * [factorial [9 - 1]]  which is 9 * [factorial 8]. 
--factorial 8 has the first expression evaluated to [if 8 >= 1] evaluate to True. 
--In fact, that expression will evaluate to True for all values that are greater than || equal to 1. Zero will return False. 
--So back to the step where the predicate of factorial 8 has evaluated to True.  We enter the 'then' portion of the expression, 
--and find that 8 * factorial (7) is the next step up. this will continue... until we have 3 * factorial (2)
--if 2 >= 1; then 2 * factorial (1). if 1 >= 1 then 1 * (factorial 0); which 


--Success!!
--What else can be done with recursion practice? 
--Well, what is recursion? Recursion is something that solves a big problem with successively smaller versions of the same problem. 
--Do we really need to understand recursion in terms of 'problem solving'? It's a principle. It's a process. It doesn't necessarily need
--to be directed. Or maybe it does. What's another mathematical operation? Subtracting by n. 

subtractBy a n = if a > -10000
			     then a - subtractBy (a - n) + 10
			     else a 


--Let;s walkk through, a being boiund to 100 and n being bound to 3. The predicate is going to evaluate to True in this case because 
--the expression 100 not null is the same as [not null value] not null = True. The predicate is rtrue. We now proceed to the 'then' 
--code block. which is 100 - [the function (100 - 3)] which is 100 - subtractBy(97). Which is 3. God damn! That is more dimunition than I
--thought it would be. 100 - [if 97 not null] -> 97 - [97 - 3] -> 97 - [subtractBy 94] -> subtractBy [94] = [94 - [94 - subtractBy (94 - 3)]]
--subtractBy[91] 

--So what is the result of 100 and 3? 
--It might not even load module, since I don't know if a Num value can be compared against the expression 'not null.' 
--Let's say it did load module. 100 isn't null. Predicate True. Then 100 - [97 not null -> then 97 - [94 not null -> then 94 - [91 not null -> then  91 - ]]]
--91 - ]]]
--Whatever it does. It doesn't end. Because even when a starts getting negative. Below zero, it won't be null. So the loop continues. 
--What about if I change the predicate to a > 0? 
--
--It's infinite!! Haskell can't load module, and gives the error "cannot construct the infinite type: a ~ a -> a"







