
-- Q5. Reverse a list.

reverseList :: [a] -> [a]
reverseList [] = []
reverseList xs = last xs : reverseList (init xs)
