
f = [1,2,3,4,5]


init0 :: [a] -> [a]
init0 xs = take (length xs -1) xs





-- types OK but wrong answer
-- need another reverse
init1 xs = tail (reverse(xs))

-- wrong types meaning xs needs to be a list of lists
init2 xs = reverse(head(reverse xs))

-- types OK but wrong answer, we've just dropped head.
init3 xs = reverse(tail xs)

--types ok again but
--init4 l == l 
init4 xs = take (length xs) xs


-- looks good
init5 xs = reverse (tail(reverse xs))


--types ok but
--init6 l == tail l
init6 xs = take ( length xs -1) (tail xs)


-- types ok but
-- just return last value
init7 xs = drop (length xs -1) xs 


          
