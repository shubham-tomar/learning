-- just testing out things
{-
to init compiler run ghci
:l file_path to load
:r to run
:t fun_name to see fun defination
-}

import Data.List
import System.IO

-- Int ranges from -2^63 to 2^63
-- we also have Integer type which do not have any bound
-- maxInt = maxBound :: Int
-- Double(preffered) and Float 
-- x = 3.2222
-- Bool, True or False
-- Char 's'
-- Tuple -> list of values of same or different data types 
-- modEx = mod 4 5 (suffix), modEx2 = 4 `mod` 5 (infix)



getString [] = "Empty"
getString all@(x:xs) = "First letter in " ++ all ++ " is " ++ [x]



xlist = [ x * 2 | x <- [1..5]]

-- batAvg :: Double -> Double -> (Double, String)


batAvg runs balls
    | avg <= 100 = (avg, "Poor")
    | avg <= 150 = (avg, "Decent")
    | avg <= 200 = (avg, "Great")
    | otherwise = (avg, "Super!!")
    where
        avg =  (fromInteger $ round $ (runs/balls)*100 * (10^2)) / (10.0^^2)