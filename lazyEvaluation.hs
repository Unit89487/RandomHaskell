--Going to write a few functions that use || as their logical deteriminant in their pedicate. 


addOrDivide n k = if n > k || n > 15
				  then n + k
				  else n / k


print (addOrDivide (4 + 6) 1)
--How is this function call evaluated? First we ensure that addOrDivide is going to be called by calling the print function, 
--which will require it's argument to be evaluated. The first step in evaluating the expression (addOrDivide (4 + 6) 1) is to attempt
--to evaluate addOrDivide, which will require it's arguments to be evaluated. At this point, 

--Taking guidance from the book: Our first step is to attempt to apply print, which needs its argument evaluated. To do that, we apply the function
--addOrDivide to the values (4 + 6) and 1. We bind the variable n to (4 + 6) and 1 to k. If we substitute these values into addOrDivide's
--predicate, we get: (4 + 6) > 1 || (4 + 6) > 15. Since the left side of the predicate evaluates to true, the predicate short-circuits
--and expression returns True, resulting in the execution of the 'if' expression's "then" code block. 

--

printOrInt n k = if (n + k) > 10 || n < k
				 then print "Paaarinntt"
				 else n * k 

-- Similar situation here. If printOrInt need be applied, our first step is to evaluate the predicate. Since it's an || expression, the left
--side get's evaluated first and if true, the entire expression short-circuits and returns True. 


squareOrPair p q = if p > q || (q + 5) > 15
				   then (p + q)^2
				   else p / q


cubeOrRube n k = if (n - 1) > 10 || (n * k) > 15
				 then (n + k)^3
				 else print "You're a rube!"



		