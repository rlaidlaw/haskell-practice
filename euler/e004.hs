-- Q4. Find the largest palindrome made from the product of two 3-digit numbers.
euler004 :: Integer
euler004 = maximum (filter (isPalindrome) [x * y | x <- [100..999], y <- [100..999]])

isPalindrome :: Integer -> Bool
isPalindrome n = isPalindrome' (show n)

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' []  = True
isPalindrome' [_] = True
isPalindrome' (x:xs)
  | x == last xs = isPalindrome' (init xs)
  | otherwise    = False
