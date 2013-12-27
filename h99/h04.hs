
-- Q4. Find the number of elements in a list.

listLength :: [a] -> Integer
listLength []     = 0
listLength (_:xs) = 1 + listLength xs


-- Alternative solution using tail-recursive helper function.

listLength' :: [a] -> Integer
listLength' xs = listLengthTail xs 0

listLengthTail :: [a] -> Integer -> Integer
listLengthTail [] n     = n
listLengthTail (_:xs) n = listLengthTail xs (n + 1)
