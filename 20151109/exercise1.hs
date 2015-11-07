

{--
 - Which of the following implementations are valid for a function safetail :: [a] -> [a] that behaves as the library function tail , except that safetail maps the empty list to itself, whereas tail produces an error in this case. Choose all correct implementations!
 --}

safetail xs = if null xs then [] else tail xs
