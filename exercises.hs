--Chapter Two Excercises from "Real World Haskell"


--Exercises

--1.Haskell provides a standard function, last :: [a] -> a, that returns the last element of a list. From reading the type alone, what are the possible valid behaviours (omitting crashes and infinite loops) that this function could have? What are a few things that this function clearly cannot do? 23 comments
--Since we see that last is a polymorphic function that can act on a list containing elements of any type. It takes a list of
--of any type, and returns one element of that type. It has no means of inpecting the element it returns, or of determining or knowing
--it's type at all. 




--2.Write a function lastButOne, that returns the element before the last. 123 comments
--What functions do I know here?
--head, which returns the first item of a list
--drop, which drops an integer of elements from a list and returns the shortened list
--tail, which returns the last element of the list. 
--head [the list of the last two elements] would work
--head [drop [length - 2]]

lastButOne list = head (drop (length list - 2) list) 

--other implementations 

lbo list = head (tail (reverse list))

lbo2 list = reverse list !! 1

-- Nice. 

--3.Load your lastButOne function into ghci, and try it out on lists of different lengths. What happens when you pass it a list that's too short? 26 comments

--My implementation returns the sole value 

factorial a = if a > 1
			  then a * factorial (a - 1)
			  else a