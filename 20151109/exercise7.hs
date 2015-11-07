--{
--Choose the correct implementation for the function remove :: Int -> [a] -> [a] which takes a number n and a list and removes the element at position n from the list.

--For example:
-- remove 0 [1,2,3,4] == [2,3,4]
--}


remove0 n xs = take n xs ++ drop n xs

remove1 n xs = drop n xs ++ take n xs

remove2 n xs = take(n+1) xs ++ drop n xs

remove3 n xs = take n xs ++ drop (n+1) xs



fs = [  (0, remove0),
        (1, remove1),
        (2, remove2),
        (3, remove3)
     ] 


l = [0,1,2,3,4,5,6,7,8,9]

bs:: [(Int, [Integer],[Integer])]
bs = [ (0,  l, [  1,2,3,4,5,6,7,8,9]), 
       (1,  l, [0,  2,3,4,5,6,7,8,9]),
       (2,  l, [0,1,  3,4,5,6,7,8,9]),
       (3,  l, [0,1,2,  4,5,6,7,8,9]),
       (4,  l, [0,1,2,3,  5,6,7,8,9]),
       (5,  l, [0,1,2,3,4,  6,7,8,9]),
       (6,  l, [0,1,2,3,4,5,  7,8,9]),
       (7,  l, [0,1,2,3,4,5,6,  8,9]),
       (8,  l, [0,1,2,3,4,5,6,7,  9]),
       (9,  l, [0,1,2,3,4,5,6,7,8  ]),
       (19, l, [0,1,2,3,4,5,6,7,8,9])
     ]


t1 f (a,b,c) = (f a b) == c

t2 f         = and (map (\(a,b,c) -> t1 f (a,b,c)) bs)

tests        = map (\(n,f) -> (n,t2 f)) fs

