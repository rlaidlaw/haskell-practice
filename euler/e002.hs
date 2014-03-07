import Data.List

-- Q2. Find the sum of the even-valued terms in the Fibonacci sequence
--     whose values do not exceed four million.
sumFibs :: Integer
sumFibs = foldl' (+) 0 (filter (\n -> (mod n 2) == 0) (takeWhile (< 4000000) fibs))
    where fibs = 0 : scanl (+) 1 fibs
