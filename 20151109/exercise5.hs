


-- The expression f x g y means:
--
--

g x  = x + 0

f a b = a + b


-- seems to work
t1 x y = f(x (g y))

-- syntax error
--t2 x y = ((f x) g) y 


-- compiles but looks wrong
t3 x y = f (x g) y 

t4 x y = f(x, g y)

