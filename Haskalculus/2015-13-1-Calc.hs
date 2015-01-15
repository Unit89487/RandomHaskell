--x = sqrt 1 + sqrt 1  +


x = sqrt(1 + (sqrt(1 + sqrt(1))))

goldenRatio = (1 + sqrt(5))/2 

func x = sqrt(1 + (sqrt(1 + sqrt(1))))
secondFunc x = sqrt(1 + x)

--If you've got x = sqrt(1 + x), turn that into a quadratic formula 
--that becomes x^2 = 1 + x
--which becomes x^2 - x - 1 = 0


--What's the thing inside the sqrt() parens? It's the discriminant! 
--ax^2 + bx^2 + c = 0   
--Delta = b^2 - 4 * a * c 
--x^2 + p * x + gamma = 0
--Delta = p^2 - 4 * gamma 




thirdFunc x = 1 + (1/(1 + (1/ 1 + (1 / x))))
fourthFunc x = 1 + (1 / x)  
--third and fourth func are the same function 
--How do we even know that those things are numbers? We've got to wait till we get to something called a limit of sequence. 
--Someone mentioned a decimal expression like a repeating or non-repeating one. If you've got 0.9999999 it will get closer and closer to 1
--0.99999 can be also be written (9/10). Is 0.9999999 the same thing as 0.9 + 0.09 + 0.009 + 0.0009 + ....   
--or (9/10) + (9/100) + (9/1000) + ... + (9/10000). To provide the **definition** of something like this, we need what's called a limit. 
--We could also mukltiply it by ten each time. 

--10x = 9.999....  
-- = 9 + 0.999....    = 9 + x
-- 10x -  x = 9   ... 9x = 9   ...   x = 1 
--A number can have two different decimal expressions. One is finite, the other is infinite. 
 

--All of the above holds under the condition that we think 0.9999 is a number. 



fifthFunc x = x + 1 