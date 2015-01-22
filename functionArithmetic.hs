-- 


functionSquarePlusTwo x = x^2 + 2
functionCubePlusOne g = g^3 + 11


--Dividing functions
rationalFunctionSquareCube z y = functionSquarePlusTwo z / functionCubePlusOne y 
rationalFunctionCubeSquare h i = rationalFunctionSquareCube h / functionSquarePlusTwo i


--Composite functions
compositeFunction one two three = ((rationalFunctionSquareCube one two). functionSquarePlusTwo (three))


--Adding functions 
 