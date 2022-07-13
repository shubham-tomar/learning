import Data.List
import System.IO


-- Recursion, Gaurd, Patterns
-- there are no loops in haskell, recursion is the only way


-- factorial
fac n =
    if n <= 1 then
        1
    else
        n * fac(n-1)

-- func having some functionality that has to do with booleans can be done with gaurds (|)
-- notice "=" is not req. in func. defination while using gaurds
fac2 n
    | n <=1 = 1
    | otherwise = n * fac(n-1)  -- otherwise is always the last gaurd since it always evalutaes to true


-- "_" underscore is a wildcard which act as otherwise

-- accumulators eg. tail recursive func. (no operation after recursive call)
fac3 n = aux n 1
    where
        aux n acc
            | n <=1 = acc
            | otherwise = aux (n-1) (n * acc)
