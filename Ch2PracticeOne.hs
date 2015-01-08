
states = ["Virginia", "Kentucky", "New Jersey", "Chicago", "Illannoyed"]
capitals = ["Boise", "Sioux Falls", "Indianapolis", "Austin"]
neighborhoods = ["East Village", "Alphabet City", "Bowling Green", "Tribeca"]

aTuple = (5, "Chimichangas")
anotherTuple = (9, "Churros")
yetAnotherTuple = (19000, "Huevos Rancheros")

isTrue = True || False
isFalse = True && False 




isFairOdd fair = if odd fair
				 then print "The fair is odd!"
				 else print "The fair is even!"


isFirstElementInTupleOdd tuple = if odd (fst tuple) 
								 then print "The first element of this tuple is odd! I know because I used a function with an if condition... and it's getting too long." 
								 else print "The first element is actually even. Cause it aint odd."



isFirstElementGreaterThanSecond tuple = if (fst tuple) > (snd tuple)
										then print "Yea! The first element is greater than the second element."
										else print "Nope. The first element is not greater than the second element."

isFirstElementGreaterThanTheSecondOrGreaterThanARandomNum tuple integer = if (fst tuple) > (snd tuple) || (fst tuple) > integer
																		  then print "The long a** condition of the function is true!"
																		  else print "Apparently it's not!"
isFirstElementGreaterThanSecondAndGreaterThanARandomNum tuple integer = if (fst tuple) > (snd tuple) && (fst tuple) > integer
																		then (fst tuple) + (snd tuple)
																		else (fst tuple) - (snd tuple)

boldnessFunction timeWaited resultsGot = if timeWaited < 3
										 then resultsGot * 10
										 else resultsGot * 0 

proximityFunction proximityInFeet areFacingPerson = if proximityInFeet < 6 && areFacingPerson 
												    then print "Yea, you close."
												    else print "You're not that close."




--types to use: list, tuple, boolean, string, number, float, 
--Prelude functions to try and use: compare, odd, head, tail, drop,    fst, snd 
--logical operators to use  && && ||   == 
--principles (logical principles? programming principles? mathematical principles?) recursion 

 	
isFlooded isFlooded = if isFlooded == isTrue
				      then print "Something is flooded out there!"
				      else print "Apparently there's nothing flooded."

isFrozen isIce inches = if (isIce == True) && inches > 0
			  			then print "There's ice out there!"
			  			else print "You're good. No ice!"


isTraffic isTraffic road = if isTraffic == True
						   then print "There is traffic on .. I tried to put the string concat operator + here, next to the varialbe road. But error."
						   else print "No traffic!"