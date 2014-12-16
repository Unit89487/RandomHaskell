--ch2 

myDrop n string = if n <= 0 || null string 
				  then string 
				  else myDrop (n - 1) (tail string)

educateYourself a b = if a > b || a == b || a < b
					  then print "This couldn't possibly be wrong!"
					  else print "In Haskell, the || operator short circuits."