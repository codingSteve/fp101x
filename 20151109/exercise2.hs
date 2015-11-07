--{
--Which of the following definitions is correct for the logical disjunction operator || (i.e. OR)? Choose all correct implementations!
--
--Note: since the || operator is already defined in the Prelude, you have to hide the default implementation in order to test the following code. You can hide the operator by adding the following line to your script:
--
--import Prelude hiding ((||))
--}
--


import Prelude hiding ((||))


False || False  = False
_     || _      = True


False ||| b     = b
True  ||| _     = True


b     |||| c   | b == c    = b
               | otherwise =  True


b ||||| False = b
_ ||||| True  = True

-- pattern match failue
b     |||||| True  = b
_     |||||| True  = True

False ||||||| False = False
False ||||||| True  = True
True  ||||||| False = True
True  ||||||| True  = True

fs = [ ((||)), ((|||)), ((||||)), ((|||||)), ((|||||||))]


bs = [ (False, False, False), 
       (False, True,  True),
       (True,  False, True),
       (True,  True,  True)
     ]


     


tests =  map (\bs-> and bs) (map (\f -> (map (\(a,b,c)-> f a b == c) bs )) fs )
