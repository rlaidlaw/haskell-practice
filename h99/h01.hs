
-- Q1. Find the last element of a list.

findLast :: [a] -> a
findLast []     = error "empty list"
findLast (x:[]) = x
findLast (_:xs) = findLast xs


-- Alternative solution.

findLast' :: [a] -> a
findLast' [] = error "empty list"
findLast' xs = head (reverse xs)
