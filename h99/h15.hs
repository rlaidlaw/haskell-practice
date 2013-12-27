
-- Q15. Replicate the elements of a list a given number of times.

repli :: [a] -> Int -> [a]
repli [] _     = []
repli _ 0      = []
repli (x:xs) n = repli' x n ++ repli xs n

repli' :: a -> Int -> [a]
repli' a n
  | n > 1     = a : repli' a (n - 1)
  | otherwise = [a]
