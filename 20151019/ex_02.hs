

f = [1,2,3,4,5]

-- drop returns a list so the types are wrong
last1 :: [a] -> [b] -> [b]
last1 xs = drop (length(xs)-1)


-- types look ok
last2 :: [a] -> a
last2 xs = head( drop (length xs -1) xs)

--types are wrong
last3 :: [a] -> [a]
last3 xs = tail (reverse (xs))


-- mental types head would need a  list of lists
last4 xs = reverse(head(xs))


--drops too many
last5 xs = head (drop (length xs) xs)

--types ok and looks right
last6 xs = xs !! (length xs -1)

-- drops too  many 
last7 xs = head (drop (length xs) xs)


last8 xs = head ( reverse xs)

--types are OK but reversing first means we get the head of the list
last9 xs = reverse xs !! (length xs -1)







