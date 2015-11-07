--{
--Which of the following definitions is correct for the logical conjunction operator && (i.e. AND)? Choose all implementations that give the correct answer based on the TRUTH TABLE, thus not taking into account short-circuiting
--
--Note: since the && operator is already defined in the Prelude, you have to hide the default implementation in order to test the following code. You can hide the operator by adding the following line to your script:

--import Prelude hiding ((&&))
--}


import Prelude hiding ((&&))


and0 True True = True
and0 _    _    = False

and1 a b = if a then if b then True else False else False

and2 a b = if not(a) then not(b) else True

--no else so fails
--and3 a b = if a then b

and4 a b = if a then if b then False else True else False

and5 a b = if a then b else False

and6 a b = if b then a else False


fs = [  (0, and0),
        (1, and1),
        (2, and2),
        --(3, and3),
        (4, and4),
        (5, and5),
        (6, and6)
     ] 


bs = [ (False, False, False), 
       (False, True,  False),
       (True,  False, False),
       (True,  True,  True )
     ]


     



t1 f (a,b,c) = (f a b) == c

t2 f         = and (map (\(a,b,c) -> t1 f (a,b,c)) bs)

tests        = map (\(n,f) -> (n,(t2 f))) fs



