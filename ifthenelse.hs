cubeOverFive a = if a > 5
				 then a ** 3
				 else a ** 2 


listOverFive a = if drop 5 a /= []
				 then [a]


