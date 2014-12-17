--ch2 

myDrop n list = if n <= 0 || null list 
				  then list
				  else myDrop (n - 1) (tail list)

educateYourself a b = if a > b || a == b || a < b
					  then print "This couldn't possibly be wrong!"
					  else print "In Haskell, the || operator short circuits. Meaning it evaluates the expression on the left, and if that expression returns True, it does not evaluate the expression on the left. Why? It's already met it's condition."


reeducateYourself a b = if a == "The first expression in an if-then-else statment is called the predicate and returns bool."
					    then a ++ ['n','i','c','e','l','y',' ','d','o','n','e']
					    else a ++ b

continuedEducation a b = if a >= 0 || null b
						 then a 
						 else continuedEducation (a + 1) (tail b)


expensiveEducation a b = if a <= 0 || null b 
						 then a
						 else expensiveEducation (a - 1) (tail b)

lotsOfEducation a b = if a == 0 && null b 
					  then a 
					  else print "Jimboree!"


myDropTwo n list = if n <= 0 || null list
		  		   then list	
		  		   else myDropTwo (n - 1) (tail list)

--What does this functino do? It recieves a number and a list. If the number is less than or equal to one, or, if the list is null, in 
--other words, empty, then the function returns that null list. If one of those conditions is not met, it calls the same function, but
--with slightly altered values. The number originally called is decremented by one, and the list originally provided has it's first
--element removed. Then the function itself is called again, where it does... what? It just fucking sits there and does the same thing,
--doesn't it? Does it? Let's play computer.
--If we call it with 5 and "badabing", what happens? The predicate is evaluated (n is not below zero or zero, or, the list is not null),
--so the predicate is False and we proceed to the else expression. We call the same function on ((5 - 1) = 4) and (tail "badabing") = 
--adabing. Now we have passed 4 and 'adabing' to the function, and the predicate is evaluated. 4 as n is not less than or equal to
--zero, so that condition is False, or, 'adabing' is not '' (null), so the second condition is also false and the predicate returns
--false. With the predicate false, we skip the 'then' expression and proceed to the 'else' expression, Which is, dock 1 from 4, to get
--to 3, and use the tail (return list absent first element) on adabing, so the function is now called on 3 and 'dabing.' Now I see. It's
--a recursive function. The function is completing a larger task (returning a list with n elements removed) by first completing smaller
--instances of the same task (i.e. returning a list with n elements removed). The length or depth or repititiousness of the recursive
--algorithm in this case is four. It takes four complete 'recursions' for the algorithm to complete the task it was originally called
--with. What identifies it as a recursive function? The fact that it calls the same function as part of it's execution. The function calls
--itself, but with different parameters. Can I make a recursive function in Haskell with just the handful of standard library functions
--that I know of? Probably. What do I know? Tail. Head. Head. What does head do? Head returns the first char of a string. Or more generally,
--and more accurately, it returns the first element of a list. 

myHead a = if null a
	  	   then a 
	  	   else head a 

--Drop worked well for recursion because it recieved as an argument a number n. I didn't notice this until I walked through the myDrop
--function, but the task it was supposed to complete could be modeled as a repitition of a single task. I.e. I originally looked at drop
--as "dropping 10 elements" or "dropping 15 elements" or "dropping 3 elements" from a list, and looked at the number of elemnets dropped as
--a distinct action. Well. I don't know if I looked at it like that. My first thought on how to make construct that function was to use some
--other library function that you could somehow pass n to as an argument and it would isolate the first n elements of a list for you, or
--something to that effect. Turns out programming is like geometry in that you've got to piece together you're own higher functions from
--only the most basic of constructions. Arithmetic. Adding one. Subtracting one. Multiplying. Dividing. The foundational library functions
--of whatever language you're working in. Those things combined are the language's equivalents of geometry's posulates or axioms. Statements that are
--accepted as true without requiring any form of proof. The functions that I put together are analogous to theorems or corrolaries. Statements
--rely on posulates to be true themselves. Is the analogy perfect? Na. But it's helpful. Especially the bit about building complex shapes and
--wholes from the very foundational, axiomatic principles of programming. Testing conditions, and if true, doing one thing, and if false, doing
--something else. 
--Anyway... back to my attempt to construct a recursive algorithm. What other standard library functions do I know? I know.. 
--head. drop. tail. Wait... can I make my own head? I don't know how to take elements out of lists yet. Can I make my own tail? 

myTail valueOfSameTypeAsList list = if null list
			  then list
			  else valueOfSameTypeAsList:list


--The first and only argument would be a list. Let's call it "timbo." My goal would be to return "timbo" without it's first element. Without
--it's ... head. So I can use the head function somewhere? Head returns just the first element in a list. I can take the head of 'timbo', 
--but I don't have any means of getting 'imbo' (the tail) from 't' and 'timbo.' I tried testing if there was a -- operator that was the opposite
--of the list addition operator ++, but that's just the comment signifier. Anything else I can do? Nothing really comes to mind. If I can't
--subtract a char from 'timbo'.... I have a char. I can do (head 'timbo'):'timbo' to get 'ttimbo.'

doubleStuffOreoList list = if null list
						   then list
						   else (head list):list

--That's a nice little func. I still have my char. My t. And I still have my 'timbo.' How do I get to 'imbo'? What other operations do I 
--know? I know how to add an element to a list. I can add two lists together. I can put a list in a tuple. I can make a list of tuples of
--any type. 

let b = ("char", 100, [1, 2, 3])


--The parens are just to make sure the priorities are executed properly. What does (n - 1) do? It diminishes the magnitude n,
--passed to the function previously, by 1. 