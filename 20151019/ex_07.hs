

f = [6,2,7,9,36,8,1,1,3,4,5]
a = [36,9,8,7,6,5,4,3,2,1,1]


qsort :: [q] -> [q]
qsort [] = []

-- uniq reverse sort
qsort0 []     = qsort [] 
qsort0 (x:xs) = qsort0 larger ++ [x] ++ qsort0 smaller
                where larger  = [a | a <- xs , a > x]
                      smaller = [b | b <- xs , b < x]

-- types are good and result looks ok
qsort1 []     = qsort []
qsort1 (x:xs) = qsort1 larger ++ [x] ++ qsort1 smaller
                where smaller  = [a | a <- xs , a <= x]
                      larger   = [b | b <- xs , b >  x]



--good types bu the result is all wrong
--due to the sublists being reversed at each stage
qsort2 []     = qsort []
qsort2 (x:xs) = reverse (qsort2 smaller ++ [x] ++ qsort2 larger)
                where smaller  = [a | a <- xs, a <= x]
                      larger   = [b | b <- xs, b >  x]


-- seems to produce an infinite result
-- smaller always empty 
qsort3 [] = qsort  [] 
qsort3 xs = qsort3 larger ++ qsort3 smaller ++ [x]
            where x       = minimum xs
                  smaller = [a | a <-xs , a <= x]
                  larger  = [b | b <-xs , b >  x]





