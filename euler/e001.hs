import Data.List

-- Q1. Find the sum of all the multiples of 3 or 5 below 1000. (Answer = 233168)
euler001 :: Integer
euler001 = foldl' (+) 0 [n | n <- [0..999], (mod n 3) == 0 || (mod n 5) == 0]
