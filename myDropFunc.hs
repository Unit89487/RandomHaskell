--ch2 

myDrop n string = if n <= 0 || null string 
				  then string 
				  else myDrop (n - 1) (tail string)