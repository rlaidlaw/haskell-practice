
-- Q3. Find the nth element of a list, with the first element being at number 1.

elementAt :: [a] -> Integer -> a
elementAt [] _     = error "not found"
elementAt _ 0      = error "elements start at index 1"
elementAt (x:xs) n
  | n == 1    = x
  | otherwise = elementAt xs (n - 1)
