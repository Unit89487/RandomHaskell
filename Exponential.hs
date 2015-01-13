--Exponential function
--What does the Haskell library already have?
--It's already got an exponential operator, or "potentiation" as the old-school folks like to call it. 

x = 5
y = 3


--potentiate is a times a, b times. 
potentiate a b = if b > 0 then a * potentiate a (b - 1) else a 

--Step 1 potentiate 2 3
--2 *  potentiate 2 2
--Step 2
--2 * [2 * 2 * 1]

--Is there a way to do it without if, then, else. That feels kind of OOP-like. This is FP! B! 

