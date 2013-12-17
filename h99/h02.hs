
-- Q2. Find the last-but-one element of a list.

lastButOne :: [a] -> a
lastButOne []         = error "empty list"
lastButOne (_:[])     = error "list only contains one item"
lastButOne (x:(_:[])) = x
lastButOne (_:xs)     = lastButOne xs


-- Alternative solution.

lastButOne' :: [a] -> a
lastButOne' []     = error "empty list"
lastButOne' (_:[]) = error "list only contains one item"
lastButOne' list   = head (tail (reverse list))
