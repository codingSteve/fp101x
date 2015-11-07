--{
--What is the output of the function call 
--  funct 3 [1, 2, 3, 4, 5, 6, 7]? 
--  The function funct is defined as:
--
--
--}

funct :: Int -> [a] -> [a]
funct x xs = take (x+1) xs ++ drop x xs

op = funct 3 [ 1,2,3,4,5,6,7]
