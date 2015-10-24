



l = [1,2,4,5,6,7]


addone :: Integer -> Integer
addone = (\x -> x+1)


g x y  = x^2 + 5*y +3


{-
 - 7.8 exercises
 -
 -
 -}


mf0 :: (a -> b) -> (a -> Bool) -> [a] -> [b]

mf0 f p xs = op
             where op = [f x | x<-xs , p x]


mf1 :: (a -> b) -> (a -> Bool) -> [a] -> [b]

mf1 f p xs = map f (filter p xs)



all0 :: (a -> Bool) -> [a] -> Bool
all0 p (x:xs) | null xs   = p x 
              | otherwise = p x && all0 p xs


any0 :: (a->Bool) -> [a] -> Bool
any0 p (x:xs)  | null xs   = p x
               | otherwise = p x || any0 p xs

all1 p xs = bc p xs (&&)
any1 p xs = bc p xs (||)
            
bc :: (a->Bool) -> [a] -> (Bool -> Bool ->Bool) -> Bool

bc p (x:xs) c | null xs   = p x
              | otherwise = c (p x) (bc p xs c)



takeWhile0 :: (a -> Bool) -> [a] -> [a]

takeWhile0 p (x:xs) | p x       = x : takeWhile0 p xs
                    | otherwise = []

dropWhile0 :: (a->Bool) -> [a] -> [a]

dropWhile0 p (x:xs) | p x       = dropWhile0 p xs
                    | otherwise = x : xs

