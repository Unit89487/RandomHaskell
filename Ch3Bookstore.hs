--

data BookInfo = Book Int String [String]
			    deriving (Show)

--BookInfo is called the name, and Book is called the 'data constructor' 

--The BookInfo phrase after the 'data' keyword is the same of our new data type. Which by the way has the same structure as a 3-tuple of
--type (Int, String, [String])
--In this example, the Int represents the book's ID number (as in stock ID), the String represents the title, and the list of strings
--represents the names of the authors. 
--I guess in an OOP language, I'd accomplish this same representation (Information about books in a store) by creating a BookInfo class
--with properties Int, String, [String]. Or even a Book object, with properties Int, String, [String]. Declaring your own data type
--for the job is more concise. I like it. 

data MagazineInfo = Magazine Int String [String]
					deriving (Show)

--Here we've created a data type with an identical structure to that of BookInfo, but since it is known by a different type constructor,
--or name, Haskell will treat them as two entirely separate types that are not at all interchangeable, regardless of their identical structure.
--












-- A few of my own types 

data AuthorInfo = Author Int String (String, Int)
				  deriving (Show)
--Where the Int is number of pages in last book, the String is title of last book, and the (String, Int) tuple is title of highest 
--selling book, along with number of pages. Eclectic? Yes. 

data StateInfo = State Int Int Int Int [Int]
				 deriving (Show)
--Where Int is year founded, Int is population, Int is number of Congressional districts, Int is GDP, and [Int] is population of five
--largest cities.

data CitizenInfo = Citizen Int String Int String Int Float ([Int], String)
		  		   deriving (Show)
--Where Int congressional district, string is name, int is age, string is street, int is number of children, frac is number of times voted
--divided by number of elections since eligible to vote, and ([Int], String) is amount of money spent in last local election cycle, and registered party

myCitizen = Citizen 8 "Kevin" 29 "Sidmore" 3 (19/29) ([20000, 300000, 300000], "Repub")

