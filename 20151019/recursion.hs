


t1 = [True, True]
t2 = [True, False]
t3 = []

and0 :: [Bool] -> Bool

and0 []     = True
and0 (b:bs) = b && and0(bs)


concat0 :: [[a]] -> [a]

concat0 [] = [] 
concat0 (a : as) | null as   = a
                 | otherwise = a ++ concat0 as

replicate0 :: Int -> a -> [a]

replicate0 0 x = [] 
replicate0 n x = x : replicate (n-1) x 


select :: [a] -> Int -> a

select (x:xs) (0  ) = x
select (x:xs) (n+1) = select xs n

elem0 :: Eq a => a -> [a] -> Bool

elem0 n []                 = False
elem0 n (x:xs) | n == x    = True
               | otherwise = elem0 n xs


  
merge0 :: Ord a => [a] -> [a] -> [a]
halve0 ::          [a] -> ([a],[a])
msort0 :: Ord a => [a] -> [a]

merge0 [] xs     = xs
merge0 xs []     = xs
-- | expects two sorted lists
-- but because we filter the second one like qsort
-- and gradually reduce the first 
-- we may not need to have them sorted at all
-- if they are both non empty
merge0 (x:xs) ys = merge0 xs ( smaller_y ++ [x] ++ larger_y)
                   where smaller_y = [sy | sy <- ys, sy <= x]
                         larger_y  = [ly | ly <- ys, ly >  x]

halve0 xs  = (take h xs, drop h xs)
             where h = length xs `div` 2

msort0 [ ] = [ ]
msort0 [x] = [x]
msort0 xs  = merge0 ( msort0 first) (msort0 second)
             where (first, second) = halve0 (xs)

{-
 - 1. define types
 - 2. enumerate the cases
 - 3. define simple cases
 - 4. define the rest
 - 5. generalise and simplify
 -
 -}

sum0  :: Num a => [a] -> a
last0 :: [a] -> a
take0 :: Int -> [a] -> [a]

sum0 []                  = 0
sum0 (x:xs)              = x + sum0 xs

take0 0 _                = []
take0 (n+1) (x:xs)       = x : take0 n xs

last0 (x:xs) | null xs   = x
             | otherwise = last0 xs














