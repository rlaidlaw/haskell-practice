
-- Q4. Find the number of elements in a list.

listLength :: [a] -> Integer
listLength []     = 0
listLength (_:xs) = 1 + listLength xs
