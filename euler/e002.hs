import Data.List

-- Q2. Find the sum of the even-valued terms in the Fibonacci sequence
--     whose values do not exceed four million.
euler002 :: Integer
euler002 = foldl' (+) 0 (filter (isEven) (takeWhile (< 4000000) fibs))
    where
      fibs = 0 : scanl (+) 1 fibs
      isEven n = (mod n 2) == 0
