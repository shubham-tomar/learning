import Data.List
import System.IO


-- function Definations
-- name arg1 arg2 ... arg = <expr>

-- function application
-- name arg1 arg2 ... arg

-- eg

-- function Defination
in_range min max x =
    x >= min && x <= max
-- function application
-- in_range 2 7 3

-- Types --> name :: <type>
-- eg x = True (:t x)
-- Type functions --> in_range :: Integer -> Integer -> Integer -> Bool

-- Functions (let)
in_range2 min max x =
    let lower_bound = x >= min
        upper_bound = x <= max
    in
        lower_bound && upper_bound

-- functions (where)
in_range3 min max x = lb && ub 
-- above lb && ub can also be written as
-- in_range3 min max x =
    -- if lb then ub else False
    where
        lb = x >= min
        ub = x <= max

--  Functions (infix)
-- add a b = a + b
-- add 10 20
-- 10 `add` 20 (infix)


