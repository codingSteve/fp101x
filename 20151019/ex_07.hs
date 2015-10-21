

f = [6,2,7,9,36,8,1,1,3,4,5]
a = [36,9,8,7,6,5,4,3,2,1,1]

{-
 - Main> qsort f 
 - [36,9,8,7,6,5,4,3,2,1,1]
 - Main> qsort f  == a 
 - True
 -
 -}

qsort :: Ord a => [a] -> [a]
qsort []     = []
qsort (x:xs) = qsort1 (x:xs)

-- SP  uniq reverse sort
qsort0 []     = qsort [] 
qsort0 (x:xs) = qsort0 larger ++ [x] ++ qsort0 smaller
                where larger  = [a | a <- xs , a > x]
                      smaller = [b | b <- xs , b < x]

-- types are good and result looks ok
qsort1 []     = qsort []
qsort1 (x:xs) = qsort1 larger ++ [x] ++ qsort1 smaller
                where smaller  = [a | a <- xs , a <= x]
                      larger   = [b | b <- xs , b >  x]



--good types but the result is all wrong
--due to the sublists being reversed at each stage
qsort2 []     = qsort []
qsort2 (x:xs) = reverse (qsort2 smaller ++ [x] ++ qsort2 larger)
                where smaller  = [a | a <- xs, a <= x]
                      larger   = [b | b <- xs, b >  x]


-- seems to produce an infinite result
-- smaller always has the min val
qsort3 [] = qsort  [] 
qsort3 xs = qsort3 larger ++ qsort3 smaller ++ [x]
            where x       = minimum xs
                  smaller = [a | a <-xs , a <= x]
                  larger  = [b | b <-xs , b >  x]




-- Types ok but
-- will produce unsorted output similar to qsort2
qsort4 []     = qsort [] 
qsort4 (x:xs) = reverse(qsort4 smaller) ++ [x] ++ reverse(qsort4 larger)
                where larger  = [a | a <- xs, a <= x]
                      smaller = [b | b <- xs, b >  x]



-- | Types and reslt look good
qsort5 []     = qsort [] 
qsort5 (x:xs) = qsort5 larger ++ [x] ++ qsort5 smaller
                where larger  = [a | a <- xs, a >x || a == x]
                      smaller = [b | b <- xs, b <x          ]



-- | Types are good but we get sort | uniq
qsort6 []     = qsort []
qsort6 (x:xs) = qsort6 larger ++ [ x] ++ qsort6 smaller 
                where larger  = [a | a <- xs, a > x]
                      smaller = [b | b <- xs, b < x]


-- | Types and result LGTM somehow
qsort7 []     = qsort [] 
qsort7 (x:xs) = reverse( reverse(qsort7 smaller) ++ 
                         [x]                     ++
                         reverse(qsort7 larger)
                       )
                where larger  = [a | a <- xs, a >= x]
                      smaller = [b | b <- xs, b <  x]


-- | types are OK but we drop into an infinte loop becuase
-- the definition of larger never reduces
qsort8 []     = qsort [] 
qsort8 xs     = x: qsort8 larger ++ qsort8 smaller
                where x = maximum xs
                      smaller = [a | a <- xs, a <  x]
                      larger  = [b | b <- xs, b >= x]


-- | correction of above implementation
qsort9 []     = qsort []
qsort9 xs     = maximums ++ qsort9 smaller
                where x        = maximum xs
                      maximums = [a | a<-xs, a==x]
                      smaller  = [b | b<-xs, b< x]


