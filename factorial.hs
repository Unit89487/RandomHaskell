--How to approach this? Recursion. Given n, i want n * (n - 1), till n = 0. How to accomplish that?
--How to do this recursively. n * (n - 1) and then call the function again.
--Does what I've got now work? Play computer for n = 4.
--The functon factorial is called with the argument 4. The value 4 is bound to the variable n. The predicate is then evaluated.
--Since 4 > 0, the predicate returns True and the 'then' expression is applied. In the current version of this function, the same
--function is called with 4 - 1 = 3. I need it to multiply n by (n - 1) and then by ((n - 1) - 1) until n = 0. 

factorial n = if n <= 1
			  then n
			  else n * factorial (n - 1)


--Recursion is the completion of a task through the completion of a number of smaller iterations of the same task. In this case, the task
--to be completed is the multiplication of a positive integer by all positive integers less than itself. 