--MORE recursion practice? What do I have to do that involves recursion?
--I've already done a bunch of summation. 
--I tried recursive subtraction. Failed because Haskell could not construct the infinite type. What do I do this time? 
--To do recursive subtraction what do you need? You need an initial amount to subtract by, n. Then you need a constant that you want to 
--subtract by. Finally you need the number of times you want to subtract the constant by. 

subtractionByConstant initialAmount constant numberOfSubtractions = initialAmount - (constant * numberOfSubtractions)

recursiveSubtractionByConstant initialAmount constant numberOfSubtractions = if initialAmount not null
then initialAmount - (recursiveSubtractionByConstant (initialAmount - constant) constant numberOfSubtractions)
else constant

--What is that going to return? Let's play computer with initialAmount = 100; constant = 3; numberOfSubtractions = 5
--Step 1: 100 nut null -> Pred True -> Then [100 - [recSbyC 97 3 5]]  
--[recSbyC 97 3 5 -> 97 not null -> ]



--Recursive subtraction of a constant a varialbe number of times... recursively. 100 - (the thing minused a bunch of times.)
--Can I make a kind of reverse factorial? Where if I take !6, and give 3 as a constant, the multiplication is 6 * 7 * 8 * 9. 
--Yea, of course you can make that. But there's lentil pasta in the fridge. Int the fridge? 




