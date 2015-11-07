
l  = [] 

l2 = null

l3 = [1,2,3,4,5,6,7,8,9,0]

ls = [l, l3]


{--
 -
 - Which of the following implementations are valid for a function safetail :: [a] -> [a] that behaves as the library function tail , except that safetail maps the empty list to itself, whereas tail produces an error in this case. Choose all correct implementations!
 --}

safetail0 xs = if null xs then [] else tail xs

safetail1 []     = []
safetail1 (_:xs) = xs

-- bug here doing tail twice effectively
-- and pattern matching issue
--{
--safetail2 (_:xs) | null xs   = []
--                 | otherwise = tail xs
--}                 

safetail3 xs     | null xs   = []
                 | otherwise = tail xs

-- types are fine here but the order is off
-- we'll never match the second def
safetail4 xs = tail xs
safetail4 [] = []

-- fixes above bug
safetail5 [] = []
safetail5 xs = tail xs

-- not safe and not tail
safetail6 [x]    = [x]
safetail6 (_:xs) = xs

safetail7 = \ xs -> case xs of []     -> []
                               (_:xs) -> xs


fs = [ safetail0, safetail1, safetail3,  safetail5, safetail7 ]
