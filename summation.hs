--Using recursion to sum a positive integer n and every (n - 1) until zero. 


summationToZero n = if n <= 0
					then n
					else n + summationToZero (n - 1)



summationOfOdds n = if (mod n 2 /= 0 && n > 0)
					then n + summationOfOdds (n - 2)
					else n 

summationOfEvens n = if mod n 2 == 0 && n > 0 then n + summationOfEvens (n - 2) else n 


summationOfThrees n = if n <= 0 then n else n + summationOfThrees (n - 3)


