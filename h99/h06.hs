
-- Q6. Find out whether a list is a palindrome.

-- This solution assumes that the empty list is a palindrome.
isPalindrome :: Eq a => [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome (x:xs)
  | x == last xs = isPalindrome (init xs)
  | otherwise    = False
