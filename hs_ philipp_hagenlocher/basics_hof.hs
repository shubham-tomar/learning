import Data.List
import System.IO

-- higher order functions and anonymous functions 
-- HOF is a function which takes a function as an argument

-- eg

add1 :: Int -> Int
add1 x = x+1

app :: (a -> b) -> a -> b
app f x = f x
-- app add1 2 => 3

--  anonymous func. is the one which do not have a name its like \<args> -> <expr>
--  func. are just values that's why they can be given as arg.
-- eg. "add1 = (\x -> x + 1)" above add1 can be used like this and stored in var add1
--  for multiple args "(\x y z -> x+y+z)" eg. main> (\x -> x + 1) 3 => 4
--  eg. app (\x -> x+1) 2 => 3

-- map (\x -> x+1) [1,2,3]
-- map (\(x,y) -> x+y) [(1, 2), (3, 4), (5, 7)]

-- filter (\x -> x > 2) [1, 2, 3, 4, 5] => [3, 4, 5]

-- filter (\(x, y) -> x /= y) [(1,2), (1,3), (2,2), (2,1)] => [(1,2),(1,3),(2,1)]



-- partial function and currying
-- currying is any func having multiple args and can we converted to funcs. with one arg and returns a func till we reach end result

-- eg. f :: a -> b -> c -> d this can be implemented as f :: a -> (b -> (c -> d))

-- add1 :: Int -> Int -> Int
add2 x y = x+y
add3 x = (\y -> x + y)
add4 = (\x -> (\y -> x + y))


-- dlist [] = []
-- dlist (x:xs) = x*2: dlist xs
dlist = map (\x -> x*2)
