--Show how the curried function definition mult x y z = x * y * z can be understood in terms of lambda expressions.


mult0 x y z = \ x -> (\y -> (\z -> x*y*z))


-- unresolved top level overloading
--mult1 = \x -> ( x * \ y -> ( y * \ z -> z))

mult2 = \x -> (\y -> (\z -> x*y*z))

-- faulty syntax
--mult3 = (((( \x -> \y) -> \z) -> x * y) * z)

