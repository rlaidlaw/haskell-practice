
-- Q5. Reverse a list.

reverseList :: [a] -> [a]
reverseList [] = []
reverseList l  = last l : reverseList (init l)
