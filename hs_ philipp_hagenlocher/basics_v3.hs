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


-- Lists and tuples v4

-- [1,2,3]  --> 1:2:3:[] (where : means prepend)

get_a_list :: Int -> Int -> [Int]
get_a_list a b
    | b < a = []
    | b == a = [b]
    | b > a = a : get_a_list (a+1) b

-- list comprehension
--  eg. *Main> [2 * x | x <- [1,2,3]]  op-> [2,4,6]
--  eg. *Main> [2 * x | x <- [1,2,3], x > 1]  op-> [4,6]
-- eg. *Main> [x*y | x<-[1,2], y<-[3,4,5]]  op-> [3,4,5,6,8,10]

sum_func :: [Int] -> Int
sum_func []     = 0
sum_func (x:xs) = x + sum_func xs


evens :: [Int] -> [Int]
evens [] = []
evens (x:xs)
    | mod x 2 == 0 = x : evens xs
    | otherwise    = evens xs 

-- tuples can be of diff type
-- eg. (1, 2, "yes", 2.33)

add_tuples xs =
    [ x + y | (x,y) <- xs]


--  List Exercises

-- elem in a list
elem_ex :: Eq t => t -> [t] -> Bool
elem_ex _ [] = False
elem_ex a (x:xs)
    | a == x = True
    | otherwise = elem_ex a xs


-- given a list remove all duplicates
rem_dup [] = []
rem_dup (x:xs)
    | elem_ex x xs = rem_dup xs
    | otherwise = x : rem_dup xs


--  given list is asc in order
chk_asc [] = True
chk_asc [x] = True
chk_asc (x:y:xs)                 -- It can also be written as 
    | x <= y = chk_asc (y:xs)    -- chk_asc (x:y:xs) = (x <= y) && chk_asc (y:xs)
    | otherwise = False


