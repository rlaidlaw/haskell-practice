
-- Q16. Drop every nth element from a list.

dropNth :: [a] -> Int -> [a]
dropNth [] _ = []
dropNth xs 0  = xs
dropNth xs n  = dropNth' xs n 1

dropNth' :: [a] -> Int -> Int -> [a]
dropNth' [] _ _ = []
dropNth' (x:xs) n a
  | mod a n == 0 = dropNth' xs n (a + 1)
  | otherwise    = x : dropNth' xs n (a + 1)
