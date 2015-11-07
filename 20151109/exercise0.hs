
l = [1,2,3,4,5,6,7,8,9,0]

--fails to compile with 
--Instance of Fractional Int required for definition
--halve0 xs = (take n xs , drop n xs)
            --where n = length xs / 2


halve1 xs = splitAt (length xs `div` 2) xs            


halve2 xs = (take ( n `div` 2) xs, drop (n `div` 2) xs)
            where n = length xs


-- partially applied function returns a function
--
halve3 :: [a] -> [b] -> ([b],[b])
halve3 xs = splitAt (length xs `div` 2)            



-- types are OK but the plus one drops an element
halve4 xs =  (take n xs , drop (n+1) xs) 
             where n = length xs `div` 2

-- LGTM
halve5 xs = splitAt ( div (length xs) 2) xs 

-- split At takes an Int but / returns a Fractional
--halve6 xs = splitAt (length xs / 2) xs
--

halve6 xs = (take n xs, drop n xs)
            where n = length xs `div` 2
